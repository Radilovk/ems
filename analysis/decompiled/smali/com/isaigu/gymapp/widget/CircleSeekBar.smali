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

    .prologue
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

    .prologue
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

    .prologue
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

    const v1, 0x7f030062

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 100
    return-void

    .line 81
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

    .prologue
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
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 265
    return-void
.end method

.method private calcXLocationInWheel(DD)F
    .locals 7
    .param p1, "angle"    # D
    .param p3, "cos"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 363
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    mul-double v2, p3, p3

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedRadius:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 369
    :goto_0
    return v0

    .line 366
    :cond_0
    const-wide v0, 0x4070900000000000L    # 265.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    mul-double v2, p3, p3

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedRadius:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    mul-double v2, p3, p3

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedRadius:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method private calcYLocationInWheel(D)F
    .locals 3
    .param p1, "cos"    # D

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedRadius:F

    double-to-float v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private computeCos(FF)F
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v2, p1, v3

    .line 382
    .local v2, "width":F
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v0, p2, v3

    .line 383
    .local v0, "height":F
    mul-float v3, v2, v2

    mul-float v4, v0, v0

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 384
    .local v1, "slope":F
    div-float v3, v0, v1

    return v3
.end method

.method private getCircleWidth()F
    .locals 3

    .prologue
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
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
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

    .line 195
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0
.end method

.method private getDimen(I)F
    .locals 1
    .param p1, "dimenId"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getSelectedValue()I
    .locals 4

    .prologue
    .line 442
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    int-to-float v0, v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    double-to-float v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private initAttrs(Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const v6, 0x7f09005a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/R$styleable;->CircleSeekBar:[I

    invoke-virtual {v1, p1, v2, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x64

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    .line 143
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    .line 144
    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    .line 145
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f0d0029

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    .line 146
    const/4 v1, 0x5

    const v2, 0x7f0d002a

    .line 147
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getColor(I)I

    move-result v2

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    .line 148
    const/4 v1, 0x6

    const v2, 0x7f09005b

    .line 149
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDimen(I)F

    move-result v2

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    .line 150
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    .line 151
    const/4 v1, 0x3

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    .line 152
    const/4 v1, 0x7

    const v2, 0x7f0d0028

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerColor:I

    .line 153
    const/16 v1, 0x8

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    .line 154
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    .line 155
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    if-eqz v1, :cond_1

    .line 156
    const/16 v1, 0xc

    .line 157
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDimen(I)F

    move-result v2

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelShadowRadius:F

    .line 159
    :cond_1
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    .line 160
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    if-eqz v1, :cond_2

    .line 161
    const/16 v1, 0xb

    .line 162
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDimen(I)F

    move-result v2

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    .line 164
    :cond_2
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasCache:Z

    .line 165
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isCanTouch:Z

    .line 166
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

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
    .locals 9

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingLeft()I

    move-result v3

    .line 176
    .local v3, "paddingLeft":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingTop()I

    move-result v6

    .line 177
    .local v6, "paddingTop":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingRight()I

    move-result v4

    .line 178
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingBottom()I

    move-result v1

    .line 179
    .local v1, "paddingBottom":I
    const/4 v5, 0x0

    .local v5, "paddingStart":I
    const/4 v2, 0x0

    .line 180
    .local v2, "paddingEnd":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingStart()I

    move-result v5

    .line 182
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingEnd()I

    move-result v2

    .line 185
    :cond_0
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 184
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 186
    .local v0, "maxPadding":I
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setPadding(IIII)V

    .line 187
    return-void
.end method

.method private initPaints()V
    .locals 6

    .prologue
    const v5, -0xbbbbbc

    const/4 v4, 0x1

    .line 103
    const v0, 0x7f090059

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDimen(I)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelShadowRadius:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 117
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 127
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

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

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 136
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedEdgePaint:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedEdgePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    return-void
.end method

.method private isTouch(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 336
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getCircleWidth()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-double v4, v6

    .line 337
    .local v4, "radius":D
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v0, v6

    .line 338
    .local v0, "centerX":D
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v2, v6

    .line 339
    .local v2, "centerY":D
    float-to-double v6, p1

    sub-double v6, v0, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, p2

    sub-double v8, v2, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private refershPosition()V
    .locals 6

    .prologue
    .line 357
    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    int-to-double v2, v2

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 358
    iget-wide v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v0, v2

    .line 359
    .local v0, "cos":D
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershWheelCurPosition(D)V

    .line 360
    return-void
.end method

.method private refershUnreachedWidth()V
    .locals 2

    .prologue
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
    .locals 3
    .param p1, "cos"    # D

    .prologue
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

    .prologue
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

    .prologue
    .line 446
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    return v0
.end method

.method public getMaxProcess()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    return v0
.end method

.method public getPointerColor()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerColor:I

    return v0
.end method

.method public getPointerRadius()F
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    return v0
.end method

.method public getPointerShadowRadius()F
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    return v0
.end method

.method public getReachedColor()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    return v0
.end method

.method public getReachedWidth()F
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    return v0
.end method

.method public getUnreachedColor()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    return v0
.end method

.method public getUnreachedWidth()F
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    return v0
.end method

.method public getWheelShadowRadius()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelShadowRadius:F

    return v0
.end method

.method public isHasPointerShadow()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    return v0
.end method

.method public isHasReachedCornerRound()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    return v0
.end method

.method public isHasWheelShadow()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v13, v3, v4

    .line 229
    .local v13, "left":F
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v15, v3, v4

    .line 230
    .local v15, "top":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v14, v3, v4

    .line 231
    .local v14, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v10, v3, v4

    .line 232
    .local v10, "bottom":F
    add-float v3, v13, v14

    const/high16 v4, 0x40000000    # 2.0f

    div-float v11, v3, v4

    .line 233
    .local v11, "centerX":F
    add-float v3, v15, v10

    const/high16 v4, 0x40000000    # 2.0f

    div-float v12, v3, v4

    .line 235
    .local v12, "centerY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v16, v3, v4

    .line 237
    .local v16, "wheelRadius":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasCache:Z

    if-eqz v3, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_0

    .line 239
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v11, v12, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->buildCache(FFF)V

    .line 241
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 247
    :goto_0
    new-instance v2, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40400000    # 3.0f

    sub-float v5, v14, v13

    const/high16 v6, 0x40400000    # 3.0f

    sub-float/2addr v5, v6

    sub-float v6, v10, v15

    const/high16 v7, 0x40400000    # 3.0f

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->SECTION_COLORS:[I

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 248
    .local v2, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 249
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v13, v15, v14, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    double-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelCurX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelCurY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 257
    return-void

    .line 243
    .end local v2    # "shader":Landroid/graphics/LinearGradient;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v11, v12, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDefaultSize(II)I

    move-result v0

    .line 218
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, p1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getDefaultSize(II)I

    move-result v2

    .line 219
    .local v2, "width":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 220
    .local v1, "min":I
    invoke-virtual {p0, v1, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setMeasuredDimension(II)V

    .line 222
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershUnreachedWidth()V

    .line 223
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershPosition()V

    .line 224
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 412
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 413
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
    const-string/jumbo v1, "unreached_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    .line 421
    const-string/jumbo v1, "unreached_width"

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
    const-string/jumbo v1, "wheel_shadow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    .line 427
    const-string/jumbo v1, "wheel_shadow_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    .line 428
    const-string/jumbo v1, "wheel_has_cache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasCache:Z

    .line 429
    const-string/jumbo v1, "wheel_can_touch"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isCanTouch:Z

    .line 430
    const-string/jumbo v1, "wheel_scroll_only_one_circle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isScrollOneCircle:Z

    .line 431
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->initPaints()V

    .line 436
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    invoke-interface {v1, p0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;->onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V

    .line 439
    :cond_0
    return-void

    .line 433
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "state"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 391
    const-string v1, "max_process"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    const-string v1, "cur_process"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string v1, "reached_color"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string v1, "reached_width"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 395
    const-string v1, "reached_corner_round"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    const-string/jumbo v1, "unreached_color"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string/jumbo v1, "unreached_width"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mUnreachedWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 398
    const-string v1, "pointer_color"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    const-string v1, "pointer_radius"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 400
    const-string v1, "pointer_shadow"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    const-string v1, "pointer_shadow_radius"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 402
    const-string/jumbo v1, "wheel_shadow"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasWheelShadow:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    const-string/jumbo v1, "wheel_shadow_radius"

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 404
    const-string/jumbo v1, "wheel_has_cache"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasCache:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    const-string/jumbo v1, "wheel_can_touch"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isCanTouch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    const-string/jumbo v1, "wheel_scroll_only_one_circle"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isScrollOneCircle:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 271
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 272
    .local v4, "y":F
    iget-boolean v5, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isCanTouch:Z

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isTouch(FF)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 275
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->computeCos(FF)F

    move-result v2

    .line 278
    .local v2, "cos":F
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_7

    .line 279
    const-wide v6, 0x4066800000000000L    # 180.0

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v8, v10

    add-double v0, v6, v8

    .line 283
    .local v0, "angle":D
    :goto_0
    iget-boolean v5, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isScrollOneCircle:Z

    if-eqz v5, :cond_a

    .line 284
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 285
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4070e00000000000L    # 270.0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_8

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v5, v0, v6

    if-gez v5, :cond_8

    .line 286
    const-wide v6, 0x4076800000000000L    # 360.0

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 287
    const/high16 v2, -0x40800000    # -1.0f

    .line 298
    :goto_1
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4070e00000000000L    # 270.0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_1

    .line 299
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 300
    const-wide v6, 0x4070e00000000000L    # 270.0

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 302
    :cond_1
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    const-wide v8, 0x4070e00000000000L    # 270.0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_2

    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_2

    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_2

    .line 303
    const-wide v6, 0x4070e00000000000L    # 270.0

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 304
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 306
    :cond_2
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_3

    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_3

    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4070e00000000000L    # 270.0

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_3

    .line 307
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 308
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 310
    :cond_3
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getSelectedValue()I

    move-result v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    .line 311
    float-to-double v6, v2

    invoke-direct {p0, v6, v7}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershWheelCurPosition(D)V

    .line 312
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4070e00000000000L    # 270.0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_4

    .line 313
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v2, v6

    .line 314
    float-to-double v6, v2

    invoke-direct {p0, v6, v7}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->refershWheelCurPosition(D)V

    .line 321
    :cond_4
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-lez v5, :cond_5

    .line 322
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    invoke-interface {v5, p0, v6}, Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;->onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V

    .line 324
    :cond_5
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_6

    .line 325
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

    invoke-interface {v5, p0, v6}, Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;->onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V

    .line 327
    :cond_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 328
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 329
    const/4 v5, 0x1

    .line 331
    .end local v0    # "angle":D
    .end local v2    # "cos":F
    :goto_2
    return v5

    .line 281
    .restart local v2    # "cos":F
    :cond_7
    const-wide v6, 0x4066800000000000L    # 180.0

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v8, v10

    sub-double v0, v6, v8

    .restart local v0    # "angle":D
    goto/16 :goto_0

    .line 288
    :cond_8
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_9

    const-wide v6, 0x4070e00000000000L    # 270.0

    cmpl-double v5, v0, v6

    if-lez v5, :cond_9

    .line 289
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 290
    const/high16 v2, -0x40800000    # -1.0f

    goto/16 :goto_1

    .line 292
    :cond_9
    iput-wide v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    goto/16 :goto_1

    .line 295
    :cond_a
    iget-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 296
    iput-wide v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    goto/16 :goto_1

    .line 331
    .end local v0    # "angle":D
    .end local v2    # "cos":F
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_2
.end method

.method public setCurProcess(I)V
    .locals 1
    .param p1, "curProcess"    # I

    .prologue
    .line 450
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mMaxProcess:I

    .end local p1    # "curProcess":I
    :cond_0
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurProcess:I

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

    .prologue
    .line 505
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasReachedCornerRound:Z

    .line 506
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mReachedPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 507
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 508
    return-void

    .line 506
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0
.end method

.method public setMaxProcess(I)V
    .locals 0
    .param p1, "maxProcess"    # I

    .prologue
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

    .prologue
    .line 584
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mChangListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    .line 585
    return-void
.end method

.method public setPointerColor(I)V
    .locals 1
    .param p1, "pointerColor"    # I

    .prologue
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

    .prologue
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
    .locals 4
    .param p1, "pointerShadowRadius"    # F

    .prologue
    .line 572
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    .line 573
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isHasPointerShadow:Z

    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 580
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 581
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    const v3, -0xbbbbbc

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 578
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSoftwareLayer()V

    goto :goto_0
.end method

.method public setReachedColor(I)V
    .locals 1
    .param p1, "reachedColor"    # I

    .prologue
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

    .prologue
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

    .prologue
    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->SECTION_COLORS:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->SECTION_COLORS:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->SECTION_COLORS:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 203
    return-void
.end method

.method public setUnreachedColor(I)V
    .locals 1
    .param p1, "unreachedColor"    # I

    .prologue
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

    .prologue
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
    .locals 5
    .param p1, "wheelShadow"    # F

    .prologue
    const/4 v1, 0x0

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
    iput-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 550
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 551
    iput-object v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 556
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 557
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelShadowRadius:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mDefShadowOffset:F

    const v4, -0xbbbbbc

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 554
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSoftwareLayer()V

    goto :goto_0
.end method
