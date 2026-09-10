.class public Lcom/isaigu/gymapp/widget/CircleSeekBar;
.super Landroid/view/View;
.source "CircleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final INATANCE_STATE:Ljava/lang/String; = "state"

.field private static final INSTANCE_CUR_PROCESS:Ljava/lang/String; = "cur_process"

.field private static final INSTANCE_MAX_PROCESS:Ljava/lang/String; = "max_process"

.field private static final INSTANCE_POINTER_COLOR:Ljava/lang/String; = "pointer_color"

.field private static final INSTANCE_POINTER_RADIUS:Ljava/lang/String; = "pointer_radius"

.field private static final INSTANCE_POINTER_SHADOW:Ljava/lang/String; = "pointer_shadow"

.field private static final INSTANCE_POINTER_SHADOW_RADIUS:Ljava/lang/String; = "pointer_shadow_radius"

.field private static final INSTANCE_REACHED_COLOR:Ljava/lang/String; = "reached_color"

.field private static final INSTANCE_REACHED_CORNER_ROUND:Ljava/lang/String; = "reached_corner_round"

.field private static final INSTANCE_REACHED_WIDTH:Ljava/lang/String; = "reached_width"

.field private static final INSTANCE_UNREACHED_COLOR:Ljava/lang/String; = "unreached_color"

.field private static final INSTANCE_UNREACHED_WIDTH:Ljava/lang/String; = "unreached_width"

.field private static final INSTANCE_WHEEL_CAN_TOUCH:Ljava/lang/String; = "wheel_can_touch"

.field private static final INSTANCE_WHEEL_HAS_CACHE:Ljava/lang/String; = "wheel_has_cache"

.field private static final INSTANCE_WHEEL_SCROLL_ONLY_ONE_CIRCLE:Ljava/lang/String; = "wheel_scroll_only_one_circle"

.field private static final INSTANCE_WHEEL_SHADOW:Ljava/lang/String; = "wheel_shadow"

.field private static final INSTANCE_WHEEL_SHADOW_RADIUS:Ljava/lang/String; = "wheel_shadow_radius"

.field private static final RADIAN:D = 57.29577951308232


# instance fields
.field private SECTION_COLORS:[I

.field private isCanTouch:Z

.field private isHasCache:Z

.field private isHasPointerShadow:Z

.field private isHasReachedCornerRound:Z

.field private isHasWheelShadow:Z

.field private isScrollOneCircle:Z

.field private lastAngle:D

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCacheCanvas:Landroid/graphics/Canvas;

.field private mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

.field private mCurAngle:D

.field private mCurProcess:I

.field private mDefShadowOffset:F

.field private mMaxProcess:I

.field private mPointerColor:I

.field private mPointerPaint:Landroid/graphics/Paint;

.field private mPointerRadius:F

.field private mPointerShadowRadius:F

.field private mReachedColor:I

.field private mReachedEdgePaint:Landroid/graphics/Paint;

.field private mReachedPaint:Landroid/graphics/Paint;

.field private mReachedWidth:F

.field private mUnreachedColor:I

.field private mUnreachedRadius:F

.field private mUnreachedWidth:F

.field private mWheelCurX:F

.field private mWheelCurY:F

.field private mWheelPaint:Landroid/graphics/Paint;

.field private mWheelShadowRadius:F

.field private thumbBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/high16 v0, 0x41e00000    # 28.0f

    iput v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->SECTION_COLORS:[I

    .line 95
    invoke-direct {p0, p2, p3}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->initAttrs(Landroid/util/AttributeSet;I)V

    .line 96
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->initPadding()V

    .line 97
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->initPaints()V

    .line 99
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 100
    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private buildCache(FFF)V
    .locals 3
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "wheelRadius"    # F

    .line 260
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 261
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 264
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 265
    return-void
.end method

.method private calcXLocationInWheel(DD)F
    .locals 6
    .param p1, "angle"    # D
    .param p3, "cos"    # D

    .line 363
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double v4, p3, p3

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedRadius:F

    float-to-double v4, v4

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    double-to-float v0, v2

    return v0

    .line 366
    :cond_0
    const-wide v2, 0x4070900000000000L    # 265.0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double v4, p3, p3

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedRadius:F

    float-to-double v4, v4

    mul-double v0, v0, v4

    sub-double/2addr v2, v0

    double-to-float v0, v2

    return v0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double v4, p3, p3

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedRadius:F

    float-to-double v4, v4

    mul-double v0, v0, v4

    sub-double/2addr v2, v0

    double-to-float v0, v2

    return v0
.end method

.method private calcYLocationInWheel(D)F
    .locals 3
    .param p1, "cos"    # D

    .line 374
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedRadius:F

    double-to-float v2, p1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private computeCos(FF)F
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 381
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 382
    .local v0, "width":F
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p2, v1

    .line 383
    .local v1, "height":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 384
    .local v2, "slope":F
    div-float v3, v1, v2

    return v3
.end method

.method private getCircleWidth()F
    .locals 3

    .line 343
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getColor(I)I
    .locals 2
    .param p1, "colorId"    # I

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 192
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method private getDimen(I)F
    .locals 1
    .param p1, "dimenId"    # I

    .line 206
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getSelectedValue()I
    .locals 3

    .line 442
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    int-to-float v0, v0

    iget-wide v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    double-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private initAttrs(Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .line 141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/R$styleable;->CircleSeekBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    .line 143
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    .line 144
    iget v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    if-le v1, v3, :cond_0

    iput v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    .line 145
    :cond_0
    const/16 v1, 0xe

    const v3, 0x7f06003d

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    .line 146
    const/16 v1, 0x13

    const v3, 0x7f06003e

    .line 147
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getColor(I)I

    move-result v3

    .line 146
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    .line 148
    const/16 v1, 0x14

    const v3, 0x7f07004f

    .line 149
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDimen(I)F

    move-result v3

    .line 148
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    .line 150
    const/16 v1, 0xf

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    .line 151
    const/16 v1, 0x10

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    .line 152
    const/16 v1, 0xb

    const v4, 0x7f06003c

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerColor:I

    .line 153
    const/16 v1, 0xc

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    .line 154
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    .line 155
    const v4, 0x7f07004e

    if-eqz v1, :cond_1

    .line 156
    const/16 v1, 0x12

    .line 157
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDimen(I)F

    move-result v5

    .line 156
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelShadowRadius:F

    .line 159
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    .line 160
    if-eqz v1, :cond_2

    .line 161
    const/16 v1, 0xd

    .line 162
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDimen(I)F

    move-result v4

    .line 161
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    .line 164
    :cond_2
    const/4 v1, 0x7

    iget-boolean v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasCache:Z

    .line 165
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isCanTouch:Z

    .line 166
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isScrollOneCircle:Z

    .line 168
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    or-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 169
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSoftwareLayer()V

    .line 171
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    return-void
.end method

.method private initPadding()V
    .locals 8

    .line 175
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingLeft()I

    move-result v0

    .line 176
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingTop()I

    move-result v1

    .line 177
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingRight()I

    move-result v2

    .line 178
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingBottom()I

    move-result v3

    .line 179
    .local v3, "paddingBottom":I
    const/4 v4, 0x0

    .local v4, "paddingStart":I
    const/4 v5, 0x0

    .line 180
    .local v5, "paddingEnd":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingStart()I

    move-result v4

    .line 182
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingEnd()I

    move-result v5

    .line 184
    :cond_0
    nop

    .line 185
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 184
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 186
    .local v6, "maxPadding":I
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setPadding(IIII)V

    .line 187
    return-void
.end method

.method private initPaints()V
    .locals 5

    .line 103
    const v0, 0x7f07004d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDimen(I)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    .line 108
    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    const v2, -0xbbbbbc

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelShadowRadius:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    invoke-virtual {v0, v3, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 117
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    .line 118
    iget v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 127
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    .line 128
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 136
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedEdgePaint:Landroid/graphics/Paint;

    .line 137
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    return-void
.end method

.method private isTouch(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 336
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getCircleWidth()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 337
    .local v0, "radius":D
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    .line 338
    .local v2, "centerX":D
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    .line 339
    .local v4, "centerY":D
    float-to-double v6, p1

    sub-double v6, v2, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v10, p2

    sub-double v10, v4, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double v8, v0, v0

    cmpg-double v10, v6, v8

    if-gez v10, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method private refershPosition()V
    .locals 4

    .line 357
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    int-to-double v0, v0

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 358
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    .line 359
    .local v0, "cos":D
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershWheelCurPosition(D)V

    .line 360
    return-void
.end method

.method private refershUnreachedWidth()V
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedRadius:F

    .line 349
    return-void
.end method

.method private refershWheelCurPosition(D)V
    .locals 2
    .param p1, "cos"    # D

    .line 352
    iget-wide v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->calcXLocationInWheel(DD)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelCurX:F

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->calcYLocationInWheel(D)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelCurY:F

    .line 354
    return-void
.end method

.method private setSoftwareLayer()V
    .locals 2

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 211
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurProcess()I
    .locals 1

    .line 446
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    return v0
.end method

.method public getMaxProcess()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    return v0
.end method

.method public getPointerColor()I
    .locals 1

    .line 522
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerColor:I

    return v0
.end method

.method public getPointerRadius()F
    .locals 1

    .line 531
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    return v0
.end method

.method public getPointerShadowRadius()F
    .locals 1

    .line 568
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    return v0
.end method

.method public getReachedColor()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    return v0
.end method

.method public getReachedWidth()F
    .locals 1

    .line 490
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    return v0
.end method

.method public getUnreachedColor()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    return v0
.end method

.method public getUnreachedWidth()F
    .locals 1

    .line 511
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    return v0
.end method

.method public getWheelShadowRadius()F
    .locals 1

    .line 560
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelShadowRadius:F

    return v0
.end method

.method public isHasPointerShadow()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    return v0
.end method

.method public isHasReachedCornerRound()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    return v0
.end method

.method public isHasWheelShadow()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v8, v1, v2

    .line 229
    .local v8, "left":F
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    div-float/2addr v2, v3

    add-float v9, v1, v2

    .line 230
    .local v9, "top":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    div-float/2addr v2, v3

    sub-float v10, v1, v2

    .line 231
    .local v10, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    div-float/2addr v2, v3

    sub-float v11, v1, v2

    .line 232
    .local v11, "bottom":F
    add-float v1, v8, v10

    div-float v12, v1, v3

    .line 233
    .local v12, "centerX":F
    add-float v1, v9, v11

    div-float v13, v1, v3

    .line 235
    .local v13, "centerY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    div-float/2addr v2, v3

    sub-float v14, v1, v2

    .line 237
    .local v14, "wheelRadius":F
    iget-boolean v1, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasCache:Z

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    .line 239
    invoke-direct {v0, v12, v13, v14}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->buildCache(FFF)V

    .line 241
    :cond_0
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v13, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 247
    :goto_0
    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v16, 0x40400000    # 3.0f

    const/high16 v17, 0x40400000    # 3.0f

    sub-float v2, v10, v8

    const/high16 v3, 0x40400000    # 3.0f

    sub-float v18, v2, v3

    sub-float v2, v11, v9

    sub-float v19, v2, v3

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->SECTION_COLORS:[I

    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v15, v1

    move-object/from16 v20, v2

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 248
    .local v15, "shader":Landroid/graphics/LinearGradient;
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 249
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    double-to-float v4, v4

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 253
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelCurX:F

    iget v3, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    sub-float/2addr v2, v3

    iget v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelCurY:F

    sub-float/2addr v4, v3

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 257
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDefaultSize(II)I

    move-result v0

    .line 218
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDefaultSize(II)I

    move-result v1

    .line 219
    .local v1, "width":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 220
    .local v2, "min":I
    invoke-virtual {p0, v2, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setMeasuredDimension(II)V

    .line 222
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershUnreachedWidth()V

    .line 223
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershPosition()V

    .line 224
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 412
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 413
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 414
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 415
    const-string v1, "max_process"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    .line 416
    const-string v1, "cur_process"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    .line 417
    const-string v1, "reached_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    .line 418
    const-string v1, "reached_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    .line 419
    const-string v1, "reached_corner_round"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    .line 420
    const-string v1, "unreached_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    .line 421
    const-string v1, "unreached_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    .line 422
    const-string v1, "pointer_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerColor:I

    .line 423
    const-string v1, "pointer_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    .line 424
    const-string v1, "pointer_shadow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    .line 425
    const-string v1, "pointer_shadow_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    .line 426
    const-string v1, "wheel_shadow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    .line 427
    const-string v1, "wheel_shadow_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    .line 428
    const-string v1, "wheel_has_cache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasCache:Z

    .line 429
    const-string v1, "wheel_can_touch"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isCanTouch:Z

    .line 430
    const-string v1, "wheel_scroll_only_one_circle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isScrollOneCircle:Z

    .line 431
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->initPaints()V

    .line 432
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 433
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 436
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 437
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;->onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V

    .line 439
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 391
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    const-string v2, "max_process"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    const-string v2, "cur_process"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    const-string v2, "reached_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    const-string v2, "reached_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 395
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    const-string v2, "reached_corner_round"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    const-string v2, "unreached_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    const-string v2, "unreached_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 398
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerColor:I

    const-string v2, "pointer_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    const-string v2, "pointer_radius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 400
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    const-string v2, "pointer_shadow"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    const-string v2, "pointer_shadow_radius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 402
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    const-string v2, "wheel_shadow"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    const-string v2, "wheel_shadow_radius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 404
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasCache:Z

    const-string v2, "wheel_has_cache"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isCanTouch:Z

    const-string v2, "wheel_can_touch"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isScrollOneCircle:Z

    const-string v2, "wheel_scroll_only_one_circle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 270
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 271
    .local v1, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 272
    .local v2, "y":F
    iget-boolean v3, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isCanTouch:Z

    if-eqz v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isTouch(FF)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 275
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->computeCos(FF)F

    move-result v3

    .line 278
    .local v3, "cos":F
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    const-wide v7, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    const-wide v9, 0x4066800000000000L    # 180.0

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1

    .line 279
    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    mul-double v11, v11, v7

    add-double/2addr v11, v9

    .local v11, "angle":D
    goto :goto_0

    .line 281
    .end local v11    # "angle":D
    :cond_1
    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    mul-double v11, v11, v7

    sub-double v11, v9, v11

    .line 283
    .restart local v11    # "angle":D
    :goto_0
    iget-boolean v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isScrollOneCircle:Z

    const-wide v7, 0x4056800000000000L    # 90.0

    const-wide/16 v13, 0x0

    const-wide v4, 0x4070e00000000000L    # 270.0

    if-eqz v6, :cond_4

    .line 284
    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    iput-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 285
    cmpl-double v6, v9, v4

    if-lez v6, :cond_2

    cmpg-double v6, v11, v7

    if-gez v6, :cond_2

    .line 286
    const-wide v9, 0x4076800000000000L    # 360.0

    iput-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 287
    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_1

    .line 288
    :cond_2
    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    cmpg-double v6, v9, v7

    if-gez v6, :cond_3

    cmpl-double v6, v11, v4

    if-lez v6, :cond_3

    .line 289
    iput-wide v13, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 290
    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_1

    .line 292
    :cond_3
    iput-wide v11, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    goto :goto_1

    .line 295
    :cond_4
    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    iput-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 296
    iput-wide v11, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 298
    :goto_1
    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    cmpl-double v6, v9, v4

    if-lez v6, :cond_5

    .line 299
    iput-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 300
    iput-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 302
    :cond_5
    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    cmpl-double v6, v9, v4

    if-nez v6, :cond_6

    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    cmpl-double v6, v9, v13

    if-ltz v6, :cond_6

    cmpg-double v6, v9, v7

    if-gtz v6, :cond_6

    .line 303
    iput-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 304
    iput-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 306
    :cond_6
    iget-wide v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    cmpl-double v8, v6, v13

    if-nez v8, :cond_7

    iget-wide v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_7

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_7

    .line 307
    iput-wide v13, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 308
    iput-wide v13, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 310
    :cond_7
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getSelectedValue()I

    move-result v6

    iput v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    .line 311
    float-to-double v6, v3

    invoke-direct {p0, v6, v7}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershWheelCurPosition(D)V

    .line 312
    iget-wide v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_8

    .line 313
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v3, v4

    .line 314
    float-to-double v4, v3

    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershWheelCurPosition(D)V

    .line 321
    :cond_8
    iget-object v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    if-eqz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-lez v4, :cond_9

    .line 322
    iget-object v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    iget v5, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    invoke-interface {v4, p0, v5}, Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;->onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V

    .line 324
    :cond_9
    iget-object v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-lez v4, :cond_a

    .line 325
    iget-object v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    iget v5, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    invoke-interface {v4, p0, v5}, Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;->onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V

    .line 327
    :cond_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 328
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 329
    return v5

    .line 331
    .end local v3    # "cos":F
    .end local v11    # "angle":D
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public setCurProcess(I)V
    .locals 1
    .param p1, "curProcess"    # I

    .line 450
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    .line 454
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershPosition()V

    .line 455
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 456
    return-void
.end method

.method public setHasReachedCornerRound(Z)V
    .locals 2
    .param p1, "hasReachedCornerRound"    # Z

    .line 505
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    .line 506
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 507
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 508
    return-void
.end method

.method public setMaxProcess(I)V
    .locals 0
    .param p1, "maxProcess"    # I

    .line 463
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    .line 464
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershPosition()V

    .line 465
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 466
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    .line 584
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    .line 585
    return-void
.end method

.method public setPointerColor(I)V
    .locals 1
    .param p1, "pointerColor"    # I

    .line 526
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerColor:I

    .line 527
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    return-void
.end method

.method public setPointerRadius(F)V
    .locals 1
    .param p1, "pointerRadius"    # F

    .line 535
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    .line 536
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 537
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 538
    return-void
.end method

.method public setPointerShadowRadius(F)V
    .locals 3
    .param p1, "pointerShadowRadius"    # F

    .line 572
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    .line 573
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    const v2, -0xbbbbbc

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 578
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSoftwareLayer()V

    .line 580
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 581
    return-void
.end method

.method public setReachedColor(I)V
    .locals 1
    .param p1, "reachedColor"    # I

    .line 473
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    .line 474
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 477
    return-void
.end method

.method public setReachedWidth(F)V
    .locals 1
    .param p1, "reachedWidth"    # F

    .line 494
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    .line 495
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 497
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 498
    return-void
.end method

.method public setSectionColors(III)V
    .locals 2
    .param p1, "startColor"    # I
    .param p2, "middleColor"    # I
    .param p3, "endColor"    # I

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->SECTION_COLORS:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 201
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 202
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 203
    return-void
.end method

.method public setUnreachedColor(I)V
    .locals 1
    .param p1, "unreachedColor"    # I

    .line 484
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    .line 485
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 487
    return-void
.end method

.method public setUnreachedWidth(F)V
    .locals 1
    .param p1, "unreachedWidth"    # F

    .line 515
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 517
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershUnreachedWidth()V

    .line 518
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 519
    return-void
.end method

.method public setWheelShadow(F)V
    .locals 3
    .param p1, "wheelShadow"    # F

    .line 545
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelShadowRadius:F

    .line 546
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    .line 548
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 550
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 551
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    const v2, -0xbbbbbc

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 554
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSoftwareLayer()V

    .line 556
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 557
    return-void
.end method
