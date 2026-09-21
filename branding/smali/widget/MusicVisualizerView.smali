.class public final Lcom/isaigu/gymapp/widget/MusicVisualizerView;
.super Landroid/view/View;
.source "MusicVisualizerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BAR_COUNT:I = 0x28

.field private static final FRAME_MS:J = 0x10L

.field private static final INNER_RADIUS_FRAC:F = 0.34f

.field private static final OUTER_RADIUS_FRAC:F = 0.72f

.field private static final RES_GREEN:I = 0x7f06006f

.field private static final RES_GROWN:I = 0x7f06005c

.field private static final RES_ORANGE:I = 0x7f060070


# instance fields
.field private final barLevels:[F

.field private final barPaint:Landroid/graphics/Paint;

.field private final barPeaks:[F

.field private colorHigh:I

.field private colorLow:I

.field private colorMid:I

.field private final glowPaint:Landroid/graphics/Paint;

.field private final handler:Landroid/os/Handler;

.field private liveLevel:I

.field private phase:F

.field private playing:Z

.field private smoothedEnergy:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->glowPaint:Landroid/graphics/Paint;

    .line 33
    const/16 v0, 0x28

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barLevels:[F

    .line 34
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPeaks:[F

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    .line 41
    const v0, -0x77994496

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorLow:I

    .line 42
    const v0, -0x337e387c    # -6.804176E7f

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorMid:I

    .line 43
    const v0, -0x330a8400

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorHigh:I

    .line 47
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->glowPaint:Landroid/graphics/Paint;

    .line 33
    const/16 p2, 0x28

    new-array v0, p2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barLevels:[F

    .line 34
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPeaks:[F

    .line 36
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    .line 41
    const p2, -0x77994496

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorLow:I

    .line 42
    const p2, -0x337e387c    # -6.804176E7f

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorMid:I

    .line 43
    const p2, -0x330a8400

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorHigh:I

    .line 52
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->glowPaint:Landroid/graphics/Paint;

    .line 33
    const/16 p2, 0x28

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barLevels:[F

    .line 34
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPeaks:[F

    .line 36
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    .line 41
    const p2, -0x77994496

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorLow:I

    .line 42
    const p2, -0x337e387c    # -6.804176E7f

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorMid:I

    .line 43
    const p2, -0x330a8400

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorHigh:I

    .line 57
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private static bandShape(IF)F
    .registers 10

    .line 139
    float-to-double v0, p1

    const-wide v2, 0x3ffe666666666666L    # 1.9

    mul-double v2, v2, v0

    int-to-double p0, p0

    const-wide v4, 0x3fdeb851eb851eb8L    # 0.48

    mul-double v4, v4, p0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 140
    const-wide v6, 0x4012cccccccccccdL    # 4.7

    mul-double v0, v0, v6

    const-wide v6, 0x3ff11eb851eb851fL    # 1.07

    mul-double p0, p0, v6

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v4

    add-double/2addr p0, v4

    double-to-float p0, p0

    .line 141
    const p1, 0x3f051eb8    # 0.52f

    mul-float v2, v2, p1

    const p1, 0x3e8f5c29    # 0.28f

    add-float/2addr v2, p1

    const p1, 0x3e4ccccd    # 0.2f

    mul-float p0, p0, p1

    add-float/2addr v2, p0

    return v2
.end method

.method private static blend(IIF)I
    .registers 8

    .line 192
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_6

    .line 193
    return p0

    .line 195
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_d

    .line 196
    return p1

    .line 198
    :cond_d
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v1, v0

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p2

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 199
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v2, v1

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, p2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 200
    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v3, v2

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float v2, v2, p2

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 201
    and-int/lit16 p0, p0, 0xff

    int-to-float v3, p0

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float p0, p0, p2

    add-float/2addr v3, p0

    float-to-int p0, v3

    .line 202
    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private colorForLevel(F)I
    .registers 5

    .line 182
    const v0, 0x3f3851ec    # 0.72f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_15

    .line 183
    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorMid:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorHigh:I

    sub-float/2addr p1, v0

    const v0, 0x3e8f5c29    # 0.28f

    div-float/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->blend(IIF)I

    move-result p1

    return p1

    .line 185
    :cond_15
    const v0, 0x3eb33333    # 0.35f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_2a

    .line 186
    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorLow:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorMid:I

    sub-float/2addr p1, v0

    const v0, 0x3ebd70a4    # 0.37f

    div-float/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->blend(IIF)I

    move-result p1

    return p1

    .line 188
    :cond_2a
    iget p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorLow:I

    return p1
.end method

.method private static dp(Landroid/content/Context;F)F
    .registers 3

    .line 211
    nop

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 211
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private ensureAnimating()V
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->glowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->glowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    :try_start_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x3ee66666    # 0.45f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->withAlpha(IF)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorLow:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->withAlpha(IF)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorMid:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const v0, 0x3f59999a    # 0.85f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->withAlpha(IF)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorHigh:I
    :try_end_58
    .catchall {:try_start_1c .. :try_end_58} :catchall_59

    .line 70
    goto :goto_5a

    .line 69
    :catchall_59
    move-exception p1

    .line 71
    :goto_5a
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setWillNotDraw(Z)V

    .line 72
    return-void
.end method

.method private static withAlpha(IF)I
    .registers 3

    .line 206
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 207
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23

    .line 146
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->getWidth()I

    move-result v1

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->getHeight()I

    move-result v2

    .line 149
    if-lez v1, :cond_db

    if-gtz v2, :cond_13

    goto/16 :goto_db

    .line 152
    :cond_13
    int-to-float v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    .line 153
    int-to-float v5, v2

    mul-float v5, v5, v4

    .line 154
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v4

    .line 155
    const v2, 0x3eae147b    # 0.34f

    mul-float v2, v2, v1

    .line 156
    const v4, 0x3f3851ec    # 0.72f

    mul-float v1, v1, v4

    .line 157
    sub-float/2addr v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x4019999a    # 2.4f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->dp(Landroid/content/Context;F)F

    move-result v6

    .line 160
    const/4 v7, 0x0

    :goto_3f
    const/16 v8, 0x28

    if-ge v7, v8, :cond_da

    .line 161
    iget-object v8, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barLevels:[F

    aget v8, v8, v7

    .line 162
    const v9, 0x3ca3d70a    # 0.02f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_50

    .line 163
    goto/16 :goto_d6

    .line 165
    :cond_50
    int-to-double v9, v7

    const-wide v11, 0x3fc41b2f769cf0e0L    # 0.15707963267948966

    mul-double v9, v9, v11

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v11

    double-to-float v9, v9

    .line 166
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v10, v10, v1

    add-float/2addr v10, v2

    .line 167
    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v9, v13

    mul-float v9, v9, v2

    add-float/2addr v9, v3

    .line 168
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v13, v13, v2

    add-float v19, v5, v13

    .line 169
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v13, v13, v10

    add-float v20, v3, v13

    .line 170
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v11, v11, v10

    add-float v10, v5, v11

    .line 171
    invoke-direct {v0, v8}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->colorForLevel(F)I

    move-result v11

    .line 172
    iget-object v12, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->glowPaint:Landroid/graphics/Paint;

    const v13, 0x400ccccd    # 2.2f

    mul-float v13, v13, v6

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object v12, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->glowPaint:Landroid/graphics/Paint;

    const v13, 0x3e6147ae    # 0.22f

    invoke-static {v11, v13}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->withAlpha(IF)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v12, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->glowPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v14, v9

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v10

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    iget-object v12, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x3fcccccd    # 1.6f

    invoke-static {v13, v14}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->dp(Landroid/content/Context;F)F

    move-result v13

    mul-float v8, v8, v13

    add-float/2addr v8, v6

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v8, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v8, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v14, v9

    move-object/from16 v18, v8

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    :goto_d6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3f

    .line 179
    :cond_da
    return-void

    .line 150
    :cond_db
    :goto_db
    return-void
.end method

.method public run()V
    .registers 9

    .line 98
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->playing:Z

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 99
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 100
    cmpg-float v3, v0, v1

    if-gtz v3, :cond_43

    iget v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->liveLevel:I

    if-lez v3, :cond_43

    .line 101
    int-to-float v0, v3

    div-float/2addr v0, v2

    goto :goto_43

    .line 103
    :cond_24
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->playing:Z

    if-eqz v0, :cond_2d

    .line 104
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->liveLevel:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_43

    .line 106
    :cond_2d
    const v0, 0x3d23d70a    # 0.04f

    const v2, 0x3cf5c28f    # 0.03f

    iget v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->phase:F

    const v4, 0x3f266666    # 0.65f

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v2

    add-float/2addr v0, v3

    .line 109
    :cond_43
    :goto_43
    iget v2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->smoothedEnergy:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4d

    const v2, 0x3f051eb8    # 0.52f

    goto :goto_50

    :cond_4d
    const v2, 0x3dcccccd    # 0.1f

    .line 110
    :goto_50
    iget v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->smoothedEnergy:F

    sub-float/2addr v0, v3

    mul-float v0, v0, v2

    add-float/2addr v3, v0

    iput v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->smoothedEnergy:F

    .line 112
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->phase:F

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->playing:Z

    if-eqz v2, :cond_62

    const v2, 0x3e8f5c29    # 0.28f

    goto :goto_65

    :cond_62
    const v2, 0x3df5c28f    # 0.12f

    :goto_65
    add-float/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->phase:F

    .line 113
    nop

    .line 114
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_6b
    const/16 v3, 0x28

    if-ge v0, v3, :cond_c5

    .line 115
    iget v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->phase:F

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->bandShape(IF)F

    move-result v3

    .line 116
    iget v4, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->smoothedEnergy:F

    mul-float v4, v4, v3

    .line 117
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPeaks:[F

    aget v5, v3, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_84

    .line 118
    aput v4, v3, v0

    goto :goto_8d

    .line 120
    :cond_84
    aget v5, v3, v0

    const v6, 0x3f5c28f6    # 0.86f

    mul-float v5, v5, v6

    aput v5, v3, v0

    .line 122
    :goto_8d
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPeaks:[F

    aget v3, v3, v0

    const v5, 0x3f0ccccd    # 0.55f

    mul-float v3, v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 123
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barLevels:[F

    aget v4, v4, v0

    sub-float v4, v3, v4

    .line 124
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_be

    .line 125
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barLevels:[F

    aget v3, v2, v0

    cmpl-float v6, v4, v1

    if-lez v6, :cond_b4

    goto :goto_b7

    :cond_b4
    const v5, 0x3e0f5c29    # 0.14f

    :goto_b7
    mul-float v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 126
    const/4 v2, 0x1

    goto :goto_c2

    .line 128
    :cond_be
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barLevels:[F

    aput v3, v4, v0

    .line 114
    :goto_c2
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 132
    :cond_c5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->invalidate()V

    .line 133
    if-nez v2, :cond_d7

    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->playing:Z

    if-nez v0, :cond_d7

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->smoothedEnergy:F

    const v1, 0x3ca3d70a    # 0.02f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_de

    .line 134
    :cond_d7
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :cond_de
    return-void
.end method

.method public setLiveLevel(I)V
    .registers 3

    .line 87
    const/16 v0, 0x64

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->liveLevel:I

    .line 88
    return-void
.end method

.method public setPlaying(Z)V
    .registers 4

    .line 75
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->playing:Z

    .line 76
    if-nez p1, :cond_16

    .line 77
    const/4 p1, 0x0

    iput p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->liveLevel:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->smoothedEnergy:F

    .line 79
    nop

    :goto_b
    const/16 v1, 0x28

    if-ge p1, v1, :cond_16

    .line 80
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPeaks:[F

    aput v0, v1, p1

    .line 79
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 83
    :cond_16
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->ensureAnimating()V

    .line 84
    return-void
.end method
