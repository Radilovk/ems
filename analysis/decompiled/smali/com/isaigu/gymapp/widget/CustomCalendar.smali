.class public Lcom/isaigu/gymapp/widget/CustomCalendar;
.super Landroid/view/View;
.source "CustomCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private WEEK_STR:[Ljava/lang/String;

.field private addIconBitmap:Landroid/graphics/Bitmap;

.field private alertIconBitmap:Landroid/graphics/Bitmap;

.field private bgPaint:Landroid/graphics/Paint;

.field private columnWidth:I

.field private currentDay:I

.field private dayHeight:F

.field private dayOfMonth:I

.field private firstIndex:I

.field private firstLineNum:I

.field private focusPoint:Landroid/graphics/PointF;

.field private isCurrentMonth:Z

.field private lastLineNum:I

.field private lastSelectDay:I

.field private lastSelectXIndex:I

.field private lineNum:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/ProgramPlanBean;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

.field private mBgDay:I

.field private mBgMonth:I

.field private mBgPre:I

.field private mBgWeek:I

.field private mCornerDay:I

.field private mCurrentBg:I

.field private mCurrentBgDashPath:[F

.field private mCurrentBgStrokeWidth:F

.field private mLineSpac:F

.field private mMonthRowL:I

.field private mMonthRowR:I

.field private mMonthRowSpac:F

.field private mMonthSpac:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectBg:I

.field private mSelectRadius:F

.field private mSelectTextColor:I

.field private mSelectWeekTextColor:I

.field private mTextColorDay:I

.field private mTextColorMonth:I

.field private mTextColorPreFinish:I

.field private mTextColorPreNull:I

.field private mTextColorPreUnFinish:I

.field private mTextColorWeek:I

.field private mTextColorWeekend:I

.field private mTextSizeDay:F

.field private mTextSizeMonth:F

.field private mTextSizePre:F

.field private mTextSizeWeek:F

.field private mTextSpac:F

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/isaigu/gymapp/bean/ProgramPlanBean;",
            ">;"
        }
    .end annotation
.end field

.field private month:Ljava/util/Date;

.field private oneHeight:F

.field private preHeight:F

.field private responseWhenEnd:Z

.field private rowLStart:I

.field private rowRStart:I

.field private rowWidth:I

.field private selectDay:I

.field private titleHeight:F

.field private todayWeekIndex:I

.field private weekHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/widget/CustomCalendar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/widget/CustomCalendar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const-string v5, "CustomCalendar"

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    .line 494
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->focusPoint:Landroid/graphics/PointF;

    .line 556
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->responseWhenEnd:Z

    .line 646
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/R$styleable;->CustomCalendar:[I

    const/4 v7, 0x0

    invoke-virtual {v5, p2, v6, p3, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080068

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 105
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 106
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 107
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 108
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080047

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 109
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800a0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->WEEK_STR:[Ljava/lang/String;

    .line 111
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mBgMonth:I

    .line 112
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mBgWeek:I

    .line 113
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mBgDay:I

    .line 114
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mCornerDay:I

    .line 115
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mBgPre:I

    .line 117
    const/16 v5, 0x11

    const v6, 0x7f02005b

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowL:I

    .line 118
    const/16 v5, 0x12

    const v6, 0x7f02005c

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowR:I

    .line 119
    const/16 v5, 0x13

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowSpac:F

    .line 120
    const/4 v5, 0x5

    const/high16 v6, -0x1000000

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorMonth:I

    .line 121
    const/16 v5, 0xd

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeMonth:F

    .line 122
    const/16 v5, 0x1a

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthSpac:F

    .line 123
    const/4 v5, 0x6

    const/high16 v6, -0x1000000

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorWeek:I

    .line 124
    const/16 v5, 0x8

    const/high16 v6, -0x1000000

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mSelectWeekTextColor:I

    .line 126
    const/16 v5, 0xe

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeWeek:F

    .line 127
    const/16 v5, 0x9

    const v6, -0x777778

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorDay:I

    .line 128
    const/16 v5, 0xf

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeDay:F

    .line 129
    const/16 v5, 0xa

    const v6, -0xffff01

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorPreFinish:I

    .line 130
    const/16 v5, 0xb

    const v6, -0xffff01

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorPreUnFinish:I

    .line 131
    const/16 v5, 0xc

    const v6, -0xffff01

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorPreNull:I

    .line 132
    const/16 v5, 0x10

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizePre:F

    .line 133
    const/16 v5, 0x14

    const/16 v6, -0x100

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mSelectTextColor:I

    .line 134
    const/4 v5, 0x7

    const/16 v6, -0x100

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorWeekend:I

    .line 135
    const/16 v5, 0x17

    const v6, -0x777778

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mCurrentBg:I

    .line 137
    const/16 v5, 0x19

    const/high16 v6, 0x7f0e0000

    :try_start_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 138
    .local v2, "dashPathId":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 139
    .local v1, "array":[I
    array-length v5, v1

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mCurrentBgDashPath:[F

    .line 140
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 141
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mCurrentBgDashPath:[F

    aget v6, v1, v4

    int-to-float v6, v6

    aput v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "array":[I
    .end local v2    # "dashPathId":I
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const/4 v5, 0x4

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mCurrentBgDashPath:[F

    .line 147
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v5, 0x15

    const/16 v6, -0x100

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mSelectBg:I

    .line 148
    const/16 v5, 0x16

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mSelectRadius:F

    .line 149
    const/16 v5, 0x18

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mCurrentBgStrokeWidth:F

    .line 150
    const/16 v5, 0x1b

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mLineSpac:F

    .line 151
    const/16 v5, 0x1c

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSpac:F

    .line 152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->initCompute()V

    .line 156
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030003

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->alertIconBitmap:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030051

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->addIconBitmap:Landroid/graphics/Bitmap;

    .line 158
    return-void

    .line 145
    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method private drawDayAndPre(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 303
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->weekHeight:F

    add-float v2, v0, v1

    .line 305
    .local v2, "top":F
    const/4 v11, 0x0

    .local v11, "line":I
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    if-ge v11, v0, :cond_2

    .line 306
    if-nez v11, :cond_0

    .line 308
    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstLineNum:I

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstIndex:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/CustomCalendar;->drawDayAndPre(Landroid/graphics/Canvas;FIII)V

    .line 305
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 309
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    add-int/lit8 v0, v0, -0x1

    if-ne v11, v0, :cond_1

    .line 311
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    add-float/2addr v2, v0

    .line 312
    iget v8, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lastLineNum:I

    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstLineNum:I

    add-int/lit8 v1, v11, -0x1

    mul-int/lit8 v1, v1, 0x7

    add-int v9, v0, v1

    move-object v5, p0

    move-object v6, p1

    move v7, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/isaigu/gymapp/widget/CustomCalendar;->drawDayAndPre(Landroid/graphics/Canvas;FIII)V

    goto :goto_1

    .line 315
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    add-float/2addr v2, v0

    .line 316
    const/4 v8, 0x7

    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstLineNum:I

    add-int/lit8 v1, v11, -0x1

    mul-int/lit8 v1, v1, 0x7

    add-int v9, v0, v1

    move-object v5, p0

    move-object v6, p1

    move v7, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/isaigu/gymapp/widget/CustomCalendar;->drawDayAndPre(Landroid/graphics/Canvas;FIII)V

    goto :goto_1

    .line 319
    :cond_2
    return-void
.end method

.method private drawDayAndPre(Landroid/graphics/Canvas;FIII)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # F
    .param p3, "count"    # I
    .param p4, "overDay"    # I
    .param p5, "startIndex"    # I

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mLineSpac:F

    move/from16 v17, v0

    add-float v17, v17, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->dayHeight:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 334
    .local v14, "topPre":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mLineSpac:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->dayHeight:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSpac:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->preHeight:F

    move/from16 v18, v0

    add-float v15, v17, v18

    .line 336
    .local v15, "topp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mBgDay:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    new-instance v12, Landroid/graphics/RectF;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 340
    .local v12, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v13

    .line 342
    .local v13, "style":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/high16 v18, 0x40800000    # 4.0f

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mBgPre:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    new-instance v12, Landroid/graphics/RectF;

    .end local v12    # "rect":Landroid/graphics/RectF;
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSpac:F

    move/from16 v19, v0

    add-float v19, v19, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->dayHeight:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v12, v0, v14, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 349
    .restart local v12    # "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeDay:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontLeading(Landroid/graphics/Paint;)F

    move-result v6

    .line 353
    .local v6, "dayTextLeading":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizePre:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontLeading(Landroid/graphics/Paint;)F

    move-result v11

    .line 356
    .local v11, "preTextLeading":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v8, v0, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mCornerDay:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    new-instance v12, Landroid/graphics/RectF;

    .end local v12    # "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    move/from16 v17, v0

    add-int v18, v8, p5

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    move/from16 v18, v0

    add-int v19, v8, p5

    add-int/lit8 v19, v19, 0x1

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    move/from16 v19, v0

    add-float v19, v19, p2

    move/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 360
    .restart local v12    # "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v13

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 367
    add-int v17, p5, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    move/from16 v18, v0

    mul-int v9, v17, v18

    .line 368
    .local v9, "left":I
    add-int v17, p4, v8

    add-int/lit8 v5, v17, 0x1

    .line 369
    .local v5, "day":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .line 371
    .local v10, "len":I
    add-int v16, v9, v10

    .line 373
    .local v16, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeDay:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v5, :cond_2

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mSelectBg:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorDay:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0052

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    new-instance v12, Landroid/graphics/RectF;

    .end local v12    # "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    move/from16 v17, v0

    add-int v18, v8, p5

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    move/from16 v18, v0

    add-int v19, v8, p5

    add-int/lit8 v19, v19, 0x1

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    move/from16 v19, v0

    add-float v19, v19, p2

    move/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 393
    .restart local v12    # "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->addIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->addIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v19, v19, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->addIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 403
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v18, v9, 0x14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mLineSpac:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v19, v19, p2

    add-float v19, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->isCurrentMonth:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->currentDay:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v5, :cond_0

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeDay:F

    move/from16 v18, v0

    const/high16 v19, 0x40a00000    # 5.0f

    sub-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorDay:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0800bd

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v18, v9, 0x14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mLineSpac:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v19, v19, p2

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v20, v20, v6

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeDay:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 424
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 425
    .local v7, "finish":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    if-eqz v7, :cond_1

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->alertIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->alertIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSpac:F

    move/from16 v19, v0

    add-float v19, v19, v14

    add-float v19, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->alertIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 356
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 400
    .end local v7    # "finish":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorDay:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 473
    .end local v5    # "day":I
    .end local v9    # "left":I
    .end local v10    # "len":I
    .end local v16    # "x":I
    :cond_3
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 256
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mBgMonth:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    invoke-direct {v2, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 258
    .local v2, "rect":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 260
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeMonth:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorMonth:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getMonthStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    .line 263
    .local v3, "textLen":F
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float v4, v5, v8

    .line 264
    .local v4, "textStart":F
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getMonthStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthSpac:F

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    .line 265
    invoke-static {v7}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontLeading(Landroid/graphics/Paint;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    .line 264
    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowL:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 269
    .local v1, "h":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowWidth:I

    .line 271
    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowSpac:F

    mul-float/2addr v5, v8

    sub-float v5, v4, v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowLStart:I

    .line 272
    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowLStart:I

    int-to-float v5, v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowSpac:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    int-to-float v7, v1

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 273
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowR:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    add-float v5, v4, v3

    float-to-int v5, v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowRStart:I

    .line 275
    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowRStart:I

    int-to-float v5, v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowSpac:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    int-to-float v7, v1

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 276
    return-void
.end method

.method private drawWeek(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 280
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mBgWeek:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    new-instance v2, Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    iget v8, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->weekHeight:F

    add-float/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 282
    .local v2, "rect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 284
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeWeek:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->WEEK_STR:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 287
    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->todayWeekIndex:I

    if-ne v4, v0, :cond_2

    iget-boolean v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->isCurrentMonth:Z

    if-eqz v4, :cond_2

    .line 288
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mSelectWeekTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    :goto_1
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->WEEK_STR:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorWeekend:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->WEEK_STR:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v4

    float-to-int v1, v4

    .line 296
    .local v1, "len":I
    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 297
    .local v3, "x":I
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->WEEK_STR:[Ljava/lang/String;

    aget-object v4, v4, v0

    int-to-float v5, v3

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontLeading(Landroid/graphics/Paint;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "len":I
    .end local v3    # "x":I
    :cond_2
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextColorWeek:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 299
    :cond_3
    return-void
.end method

.method private getMonthStr(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "month"    # Ljava/util/Date;

    .prologue
    .line 477
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initCompute()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 161
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    .line 162
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    .line 163
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    .line 169
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeMonth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthSpac:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    .line 172
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeWeek:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->weekHeight:F

    .line 175
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizeDay:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->dayHeight:F

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSizePre:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/FontUtil;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->preHeight:F

    .line 181
    iget v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mLineSpac:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->dayHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mTextSpac:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->preHeight:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    .line 184
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getMonthStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "cDateStr":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setMonth(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private setMonth(Ljava/lang/String;)V
    .locals 12
    .param p1, "Month"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x7

    const/4 v8, 0x0

    .line 192
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->str2Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 195
    .local v1, "calendar":Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 197
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->currentDay:I

    .line 198
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->todayWeekIndex:I

    .line 200
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getMonthStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/widget/CustomCalendar;->str2Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 202
    .local v0, "cM":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 203
    iput-boolean v10, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->isCurrentMonth:Z

    .line 204
    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->currentDay:I

    iput v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    .line 209
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u8bbe\u7f6e\u6708\u4efd\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   \u4eca\u5929"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->currentDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u53f7, \u662f\u5426\u4e3a\u5f53\u524d\u6708\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->isCurrentMonth:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 211
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->dayOfMonth:I

    .line 213
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstIndex:I

    .line 214
    iput v10, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    .line 216
    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstIndex:I

    rsub-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstLineNum:I

    .line 217
    iput v8, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lastLineNum:I

    .line 218
    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->dayOfMonth:I

    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstLineNum:I

    sub-int v2, v3, v4

    .line 219
    .local v2, "shengyu":I
    :goto_1
    if-le v2, v9, :cond_1

    .line 220
    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    .line 221
    add-int/lit8 v2, v2, -0x7

    goto :goto_1

    .line 206
    .end local v2    # "shengyu":I
    :cond_0
    iput-boolean v8, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->isCurrentMonth:Z

    .line 207
    iput v8, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    goto :goto_0

    .line 223
    .restart local v2    # "shengyu":I
    :cond_1
    if-lez v2, :cond_2

    .line 224
    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    .line 225
    iput v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lastLineNum:I

    .line 227
    :cond_2
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getMonthStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e00\u5171\u6709"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->dayOfMonth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5929,\u7b2c\u4e00\u5929\u7684\u7d22\u5f15\u662f\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   \u6709"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u884c\uff0c\u7b2c\u4e00\u884c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstLineNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e2a\uff0c\u6700\u540e\u4e00\u884c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lastLineNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e2a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method private setSelectedDay(IIILandroid/graphics/PointF;Z)V
    .locals 10
    .param p1, "day"    # I
    .param p2, "xIndex"    # I
    .param p3, "yIndex"    # I
    .param p4, "point"    # Landroid/graphics/PointF;
    .param p5, "eventEnd"    # Z

    .prologue
    .line 610
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u9009\u4e2d\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  \u4e8b\u4ef6\u662f\u5426\u7ed3\u675f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iput p1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    .line 612
    iput p2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lastSelectXIndex:I

    .line 613
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->invalidate()V

    .line 615
    add-int/lit8 v4, p2, -0x1

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->addIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 616
    .local v1, "left":I
    int-to-float v4, p3

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->addIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 617
    .local v3, "top":I
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->addIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 618
    .local v2, "right":I
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->addIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 619
    .local v0, "bottom":I
    iget v4, p4, Landroid/graphics/PointF;->x:F

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p4, Landroid/graphics/PointF;->x:F

    add-int v5, v1, v2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v4, p4, Landroid/graphics/PointF;->y:F

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p4, Landroid/graphics/PointF;->y:F

    add-int v5, v3, v0

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 620
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    if-eqz v4, :cond_0

    if-eqz p5, :cond_0

    .line 622
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    invoke-interface {v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;->onAddClick(III)V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    if-eqz v4, :cond_2

    if-eqz p5, :cond_2

    iget-boolean v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->responseWhenEnd:Z

    if-eqz v4, :cond_2

    .line 628
    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    iput v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lastSelectDay:I

    .line 630
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v6, v4, 0x76c

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    iget v8, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    iget v9, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    invoke-interface {v5, v6, v7, v8, v4}, Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;->onDayClick(IIILcom/isaigu/gymapp/bean/ProgramPlanBean;)V

    .line 632
    :cond_2
    if-nez p5, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->responseWhenEnd:Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private str2Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 482
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 486
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private touchDay(Landroid/graphics/PointF;Z)V
    .locals 12
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "eventEnd"    # Z

    .prologue
    .line 560
    const/4 v10, 0x0

    .line 562
    .local v10, "availability":Z
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->weekHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    add-float v11, v0, v1

    .line 563
    .local v11, "top":F
    const/4 v3, 0x1

    .line 564
    .local v3, "foucsLine":I
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    if-gt v3, v0, :cond_0

    .line 565
    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v11, v0

    if-ltz v0, :cond_4

    .line 566
    const/4 v10, 0x1

    .line 572
    :cond_0
    if-eqz v10, :cond_9

    .line 574
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    div-int v2, v0, v1

    .line 575
    .local v2, "xIndex":I
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 576
    add-int/lit8 v2, v2, 0x1

    .line 579
    :cond_1
    if-gtz v2, :cond_2

    .line 580
    const/4 v2, 0x1

    .line 581
    :cond_2
    const/4 v0, 0x7

    if-le v2, v0, :cond_3

    .line 582
    const/4 v2, 0x7

    .line 584
    :cond_3
    const/4 v0, 0x1

    if-ne v3, v0, :cond_6

    .line 586
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstIndex:I

    if-gt v2, v0, :cond_5

    .line 587
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u70b9\u5230\u5f00\u59cb\u7a7a\u4f4d\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setSelectedDay(IIILandroid/graphics/PointF;Z)V

    .line 607
    .end local v2    # "xIndex":I
    :goto_1
    return-void

    .line 569
    :cond_4
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    add-float/2addr v11, v0

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 590
    .restart local v2    # "xIndex":I
    :cond_5
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstIndex:I

    sub-int v1, v2, v0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setSelectedDay(IIILandroid/graphics/PointF;Z)V

    goto :goto_1

    .line 592
    :cond_6
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    if-ne v3, v0, :cond_8

    .line 594
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lastLineNum:I

    if-le v2, v0, :cond_7

    .line 595
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u70b9\u5230\u7ed3\u5c3e\u7a7a\u4f4d\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setSelectedDay(IIILandroid/graphics/PointF;Z)V

    goto :goto_1

    .line 598
    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstLineNum:I

    add-int/lit8 v1, v3, -0x2

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    add-int v1, v0, v2

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setSelectedDay(IIILandroid/graphics/PointF;Z)V

    goto :goto_1

    .line 601
    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->firstLineNum:I

    add-int/lit8 v1, v3, -0x2

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    add-int v1, v0, v2

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setSelectedDay(IIILandroid/graphics/PointF;Z)V

    goto :goto_1

    .line 605
    .end local v2    # "xIndex":I
    :cond_9
    iget v5, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->selectDay:I

    iget v6, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lastSelectXIndex:I

    const/4 v9, 0x1

    move-object v4, p0

    move v7, v3

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setSelectedDay(IIILandroid/graphics/PointF;Z)V

    goto :goto_1
.end method


# virtual methods
.method public addDayTask(Lcom/isaigu/gymapp/bean/ProgramPlanBean;)V
    .locals 2
    .param p1, "bean"    # Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->day:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->invalidate()V

    .line 708
    return-void
.end method

.method public getDayTask(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .locals 2
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 680
    :goto_1
    return-object v1

    .line 675
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDayTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/ProgramPlanBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMonth()Ljava/util/Date;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->requestLayout()V

    .line 641
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 642
    return-void
.end method

.method public monthChange(I)V
    .locals 2
    .param p1, "change"    # I

    .prologue
    .line 712
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 713
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 714
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 715
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getMonthStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setMonth(Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 717
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->invalidate()V

    .line 718
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->drawMonth(Landroid/graphics/Canvas;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->drawWeek(Landroid/graphics/Canvas;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->drawDayAndPre(Landroid/graphics/Canvas;)V

    .line 250
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 234
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 235
    .local v1, "widthSize":I
    div-int/lit8 v2, v1, 0x7

    iput v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    .line 237
    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->weekHeight:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    int-to-float v3, v3

    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 238
    .local v0, "height":F
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6807\u9898\u9ad8\u5ea6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u661f\u671f\u9ad8\u5ea6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->weekHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6bcf\u884c\u9ad8\u5ea6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->oneHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u884c\u6570\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->lineNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  \n\u63a7\u4ef6\u9ad8\u5ea6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getDefaultSize(II)I

    move-result v2

    float-to-int v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setMeasuredDimension(II)V

    .line 243
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 498
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 514
    :goto_0
    return v5

    .line 500
    :pswitch_0
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->focusPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 501
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->focusPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, v4}, Lcom/isaigu/gymapp/widget/CustomCalendar;->touchFocusMove(Landroid/graphics/PointF;Z)V

    goto :goto_0

    .line 504
    :pswitch_1
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->focusPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 505
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->focusPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, v4}, Lcom/isaigu/gymapp/widget/CustomCalendar;->touchFocusMove(Landroid/graphics/PointF;Z)V

    goto :goto_0

    .line 510
    :pswitch_2
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->focusPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 511
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->focusPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, v5}, Lcom/isaigu/gymapp/widget/CustomCalendar;->touchFocusMove(Landroid/graphics/PointF;Z)V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public removeDayPlan(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dayString"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 694
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 695
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    invoke-virtual {v2, p2}, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->removePlan(Ljava/lang/String;)Z

    move-result v1

    .line 697
    .local v1, "remove":Z
    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->invalidate()V

    .line 694
    .end local v1    # "remove":Z
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 702
    :cond_1
    return-void
.end method

.method public removeDayTask(ILjava/lang/String;)V
    .locals 3
    .param p1, "day"    # I
    .param p2, "dayString"    # Ljava/lang/String;

    .prologue
    .line 684
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 685
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 687
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->invalidate()V

    .line 684
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 691
    :cond_1
    return-void
.end method

.method public setDayTask(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "month"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/ProgramPlanBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/ProgramPlanBean;>;"
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setMonth(Ljava/lang/String;)V

    .line 650
    if-eqz p2, :cond_0

    .line 651
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    .line 652
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 653
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 654
    .local v0, "finish":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 657
    .end local v0    # "finish":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->invalidate()V

    .line 658
    return-void
.end method

.method public setDayTask(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/ProgramPlanBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/ProgramPlanBean;>;"
    if-eqz p1, :cond_0

    .line 661
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->list:Ljava/util/List;

    .line 662
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 663
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 664
    .local v0, "finish":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->map:Ljava/util/Map;

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 667
    .end local v0    # "finish":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->invalidate()V

    .line 668
    return-void
.end method

.method public setOnClickListener(Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    .line 727
    return-void
.end method

.method public touchFocusMove(Landroid/graphics/PointF;Z)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "eventEnd"    # Z

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 519
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u70b9\u51fb\u5750\u6807\uff1a("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "),\u4e8b\u4ef6\u662f\u5426\u7ed3\u675f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 525
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    if-eqz v1, :cond_0

    .line 526
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowLStart:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowLStart:I

    int-to-float v2, v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowSpac:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u70b9\u51fb\u5de6\u7bad\u5934"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    invoke-interface {v1}, Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;->onLeftRowClick()V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowRStart:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowRStart:I

    int-to-float v2, v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->mMonthRowSpac:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 530
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u70b9\u51fb\u53f3\u7bad\u5934"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    invoke-interface {v1}, Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;->onRightRowClick()V

    goto :goto_0

    .line 532
    :cond_2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowLStart:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->rowRStart:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getMonthStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->month:Ljava/util/Date;

    invoke-interface {v1, v2, v3}, Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;->onTitleClick(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 536
    :cond_3
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->titleHeight:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->weekHeight:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 538
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    if-eqz v1, :cond_0

    .line 540
    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    div-int v0, v1, v2

    .line 541
    .local v0, "xIndex":I
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5217\u5bbd\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  x\u5750\u6807\u4f59\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->columnWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 543
    add-int/lit8 v0, v0, 0x1

    .line 545
    :cond_4
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->listener:Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/CustomCalendar;->WEEK_STR:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;->onWeekClick(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 551
    .end local v0    # "xIndex":I
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/widget/CustomCalendar;->touchDay(Landroid/graphics/PointF;Z)V

    goto/16 :goto_0
.end method
