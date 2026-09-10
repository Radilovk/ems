.class public Lcom/yanzhenjie/loading/LevelLoadingRenderer;
.super Lcom/yanzhenjie/loading/LoadingRenderer;
.source "LevelLoadingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;
    }
.end annotation


# static fields
.field private static final ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_CENTER_RADIUS:F = 12.5f

.field private static final DEFAULT_LEVEL_COLORS:[I

.field private static final DEFAULT_STROKE_WIDTH:F = 2.5f

.field private static final DEGREE_360:I = 0x168

.field private static final END_TRIM_DURATION_OFFSET:F = 1.0f

.field private static final FULL_GROUP_ROTATION:F = 1080.0f

.field private static final LEVEL_SWEEP_ANGLE_OFFSETS:[F

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_SWIPE_DEGREES:F = 288.0f

.field private static final NUM_POINTS:I = 0x5

.field private static final START_TRIM_DURATION_OFFSET:F = 0.5f


# instance fields
.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCenterRadius:F

.field private mEndDegrees:F

.field private mGroupRotation:F

.field private mLevelColors:[I

.field private mLevelSwipeDegrees:[F

.field private mOriginEndDegrees:F

.field private mOriginStartDegrees:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRotationCount:F

.field private mStartDegrees:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Lcom/yanzhenjie/loading/FastOutSlowInInterpolator;

    invoke-direct {v0}, Lcom/yanzhenjie/loading/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 47
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->LEVEL_SWEEP_ANGLE_OFFSETS:[F

    .line 55
    new-array v0, v0, [I

    .line 56
    const-string v1, "#55ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 57
    const-string v1, "#b1ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 58
    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->DEFAULT_LEVEL_COLORS:[I

    .line 55
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f200000    # 0.625f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0, p1}, Lcom/yanzhenjie/loading/LoadingRenderer;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mTempBounds:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$1;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$1;-><init>(Lcom/yanzhenjie/loading/LevelLoadingRenderer;)V

    iput-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 101
    invoke-direct {p0, p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->init(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->setupPaint()V

    .line 103
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->addRenderListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/loading/LevelLoadingRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    .line 35
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->storeOriginals()V

    return-void
.end method

.method static synthetic access$1000(Lcom/yanzhenjie/loading/LevelLoadingRenderer;Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer;
    .param p1, "x1"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;

    .line 35
    invoke-direct {p0, p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->apply(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)V

    return-void
.end method

.method static synthetic access$102(Lcom/yanzhenjie/loading/LevelLoadingRenderer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer;
    .param p1, "x1"    # F

    .line 35
    iput p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStartDegrees:F

    return p1
.end method

.method static synthetic access$200(Lcom/yanzhenjie/loading/LevelLoadingRenderer;)F
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    .line 35
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mEndDegrees:F

    return v0
.end method

.method static synthetic access$300(Lcom/yanzhenjie/loading/LevelLoadingRenderer;)F
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    .line 35
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mRotationCount:F

    return v0
.end method

.method static synthetic access$302(Lcom/yanzhenjie/loading/LevelLoadingRenderer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer;
    .param p1, "x1"    # F

    .line 35
    iput p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mRotationCount:F

    return p1
.end method

.method private apply(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;

    .line 236
    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$400(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$400(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mWidth:F

    :goto_0
    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mWidth:F

    .line 237
    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$500(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$500(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mHeight:F

    :goto_1
    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mHeight:F

    .line 238
    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$600(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$600(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStrokeWidth:F

    :goto_2
    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStrokeWidth:F

    .line 239
    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$700(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$700(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mCenterRadius:F

    :goto_3
    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mCenterRadius:F

    .line 241
    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$800(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$800(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_4

    :cond_4
    iget-wide v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mDuration:J

    :goto_4
    iput-wide v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mDuration:J

    .line 243
    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$900(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)[I

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->access$900(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)[I

    move-result-object v0

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelColors:[I

    :goto_5
    iput-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelColors:[I

    .line 245
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->setupPaint()V

    .line 246
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mWidth:F

    iget v1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mHeight:F

    invoke-direct {p0, v0, v1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->initStrokeInset(FF)V

    .line 247
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {p1, v0}, Lcom/yanzhenjie/loading/Utils;->dip2px(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStrokeWidth:F

    .line 108
    const/high16 v0, 0x41480000    # 12.5f

    invoke-static {p1, v0}, Lcom/yanzhenjie/loading/Utils;->dip2px(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mCenterRadius:F

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelSwipeDegrees:[F

    .line 111
    sget-object v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->DEFAULT_LEVEL_COLORS:[I

    iput-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelColors:[I

    .line 112
    return-void
.end method

.method private initStrokeInset(FF)V
    .locals 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 212
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 213
    .local v0, "minSize":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    iget v3, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mCenterRadius:F

    sub-float/2addr v2, v3

    .line 214
    .local v2, "strokeInset":F
    iget v3, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStrokeWidth:F

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 215
    .local v1, "minStrokeInset":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput v3, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStrokeInset:F

    .line 216
    return-void
.end method

.method private resetOriginals()V
    .locals 3

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mOriginEndDegrees:F

    .line 225
    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mOriginStartDegrees:F

    .line 227
    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mEndDegrees:F

    .line 228
    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStartDegrees:F

    .line 230
    iget-object v1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelSwipeDegrees:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 231
    const/4 v2, 0x1

    aput v0, v1, v2

    .line 232
    const/4 v2, 0x2

    aput v0, v1, v2

    .line 233
    return-void
.end method

.method private setupPaint()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 120
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mWidth:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mHeight:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->initStrokeInset(FF)V

    .line 121
    return-void
.end method

.method private storeOriginals()V
    .locals 1

    .line 219
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mEndDegrees:F

    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mOriginEndDegrees:F

    .line 220
    iput v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mOriginStartDegrees:F

    .line 221
    return-void
.end method


# virtual methods
.method protected computeRender(F)V
    .locals 16
    .param p1, "renderProgress"    # F

    .line 151
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/high16 v4, 0x43900000    # 288.0f

    const/4 v5, 0x2

    cmpg-float v6, p1, v2

    if-gtz v6, :cond_0

    .line 152
    div-float v6, p1, v2

    .line 153
    .local v6, "startTrimProgress":F
    iget v7, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mOriginStartDegrees:F

    sget-object v8, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v8, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    mul-float v8, v8, v4

    add-float/2addr v7, v8

    iput v7, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStartDegrees:F

    .line 155
    iget v8, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mEndDegrees:F

    sub-float/2addr v8, v7

    .line 156
    .local v8, "mSwipeDegrees":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v4

    .line 158
    .local v7, "levelSwipeDegreesProgress":F
    sget-object v9, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v9, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    sget-object v10, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 159
    invoke-interface {v10, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    sub-float/2addr v9, v10

    .line 160
    .local v9, "level1Increment":F
    sget-object v10, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    sget-object v11, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 161
    invoke-interface {v11, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    sub-float/2addr v10, v11

    .line 163
    .local v10, "level3Increment":F
    iget-object v11, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelSwipeDegrees:[F

    neg-float v12, v8

    sget-object v13, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->LEVEL_SWEEP_ANGLE_OFFSETS:[F

    aget v14, v13, v1

    mul-float v12, v12, v14

    const/high16 v14, 0x3f800000    # 1.0f

    add-float v15, v9, v14

    mul-float v12, v12, v15

    aput v12, v11, v1

    .line 164
    neg-float v12, v8

    aget v15, v13, v3

    mul-float v12, v12, v15

    mul-float v12, v12, v14

    aput v12, v11, v3

    .line 165
    neg-float v12, v8

    aget v13, v13, v5

    mul-float v12, v12, v13

    add-float/2addr v14, v10

    mul-float v12, v12, v14

    aput v12, v11, v5

    .line 169
    .end local v6    # "startTrimProgress":F
    .end local v7    # "levelSwipeDegreesProgress":F
    .end local v8    # "mSwipeDegrees":F
    .end local v9    # "level1Increment":F
    .end local v10    # "level3Increment":F
    :cond_0
    cmpl-float v6, p1, v2

    if-lez v6, :cond_3

    .line 170
    sub-float v6, p1, v2

    div-float/2addr v6, v2

    .line 172
    .local v6, "endTrimProgress":F
    iget v2, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mOriginEndDegrees:F

    sget-object v7, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float v7, v7, v4

    add-float/2addr v2, v7

    iput v2, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mEndDegrees:F

    .line 174
    iget v7, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStartDegrees:F

    sub-float/2addr v2, v7

    .line 175
    .local v2, "mSwipeDegrees":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v4

    .line 177
    .restart local v7    # "levelSwipeDegreesProgress":F
    sget-object v8, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->LEVEL_SWEEP_ANGLE_OFFSETS:[F

    aget v9, v8, v3

    cmpl-float v9, v7, v9

    if-lez v9, :cond_1

    .line 178
    iget-object v9, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelSwipeDegrees:[F

    neg-float v10, v2

    aput v10, v9, v1

    .line 179
    aget v1, v8, v3

    mul-float v1, v1, v4

    aput v1, v9, v3

    .line 180
    aget v1, v8, v5

    mul-float v1, v1, v4

    aput v1, v9, v5

    goto :goto_0

    .line 181
    :cond_1
    aget v9, v8, v5

    const/4 v10, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_2

    .line 182
    iget-object v9, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelSwipeDegrees:[F

    aput v10, v9, v1

    .line 183
    neg-float v1, v2

    aput v1, v9, v3

    .line 184
    aget v1, v8, v5

    mul-float v1, v1, v4

    aput v1, v9, v5

    goto :goto_0

    .line 186
    :cond_2
    iget-object v4, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelSwipeDegrees:[F

    aput v10, v4, v1

    .line 187
    aput v10, v4, v3

    .line 188
    neg-float v1, v2

    aput v1, v4, v5

    .line 192
    .end local v2    # "mSwipeDegrees":F
    .end local v6    # "endTrimProgress":F
    .end local v7    # "levelSwipeDegreesProgress":F
    :cond_3
    :goto_0
    const/high16 v1, 0x43580000    # 216.0f

    mul-float v1, v1, p1

    const/high16 v2, 0x44870000    # 1080.0f

    iget v3, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mRotationCount:F

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mGroupRotation:F

    .line 194
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 134
    .local v0, "saveCount":I
    iget-object v1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mTempBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object v1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mTempBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mStrokeInset:F

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 136
    iget v1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mGroupRotation:F

    iget-object v2, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mTempBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mTempBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelSwipeDegrees:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelColors:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v5, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mTempBounds:Landroid/graphics/RectF;

    iget v6, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mEndDegrees:F

    iget-object v2, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelSwipeDegrees:[F

    aget v7, v2, v1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 146
    return-void
.end method

.method protected reset()V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->resetOriginals()V

    .line 209
    return-void
.end method

.method protected setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 198
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 199
    return-void
.end method

.method public setCircleColors(III)V
    .locals 2
    .param p1, "r1"    # I
    .param p2, "r2"    # I
    .param p3, "r3"    # I

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mLevelColors:[I

    .line 128
    return-void
.end method

.method protected setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 203
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 204
    return-void
.end method
