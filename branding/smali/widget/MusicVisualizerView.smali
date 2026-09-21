.class public final Lcom/isaigu/gymapp/widget/MusicVisualizerView;
.super Landroid/view/View;
.source "MusicVisualizerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BAR_COUNT:I = 0x1c

.field private static final FRAME_MS:J = 0x28L

.field private static final RES_GREEN:I = 0x7f06006f

.field private static final RES_GROWN:I = 0x7f06005c

.field private static final RES_ORANGE:I = 0x7f060070


# instance fields
.field private final barHeights:[F

.field private final barPaint:Landroid/graphics/Paint;

.field private final barTargets:[F

.field private greenColor:I

.field private grownColor:I

.field private final handler:Landroid/os/Handler;

.field private liveLevel:I

.field private orangeColor:I

.field private phase:F

.field private playing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    .line 25
    const/16 v0, 0x1c

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barHeights:[F

    .line 26
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barTargets:[F

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    .line 32
    const v0, -0x66994496

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->greenColor:I

    .line 33
    const v0, -0x337e387c    # -6.804176E7f

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->grownColor:I

    .line 34
    const v0, -0x770a8400

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->orangeColor:I

    .line 38
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    .line 25
    const/16 p2, 0x1c

    new-array v0, p2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barHeights:[F

    .line 26
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barTargets:[F

    .line 28
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    .line 32
    const p2, -0x66994496

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->greenColor:I

    .line 33
    const p2, -0x337e387c    # -6.804176E7f

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->grownColor:I

    .line 34
    const p2, -0x770a8400

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->orangeColor:I

    .line 43
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    .line 25
    const/16 p2, 0x1c

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barHeights:[F

    .line 26
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barTargets:[F

    .line 28
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    .line 32
    const p2, -0x66994496

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->greenColor:I

    .line 33
    const p2, -0x337e387c    # -6.804176E7f

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->grownColor:I

    .line 34
    const p2, -0x770a8400

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->orangeColor:I

    .line 48
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private blendColor(F)I
    .registers 3

    .line 151
    const v0, 0x3f3851ec    # 0.72f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    .line 152
    iget p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->orangeColor:I

    return p1

    .line 154
    :cond_a
    const v0, 0x3eb33333    # 0.35f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_14

    .line 155
    iget p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->grownColor:I

    return p1

    .line 157
    :cond_14
    iget p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->greenColor:I

    return p1
.end method

.method private static dp(Landroid/content/Context;F)F
    .registers 3

    .line 166
    nop

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 166
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private ensureAnimating()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x3f0ccccd    # 0.55f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->withAlpha(IF)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->greenColor:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->withAlpha(IF)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->grownColor:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const v0, 0x3ee66666    # 0.45f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->withAlpha(IF)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->orangeColor:I
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_4b

    .line 59
    goto :goto_4c

    .line 58
    :catchall_4b
    move-exception p1

    .line 60
    :goto_4c
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setWillNotDraw(Z)V

    .line 61
    return-void
.end method

.method private smoothBars()Z
    .registers 6

    .line 92
    nop

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x1c

    if-ge v0, v2, :cond_3d

    .line 94
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barTargets:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barHeights:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    .line 95
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3b03126f    # 0.002f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_32

    .line 96
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barHeights:[F

    aget v3, v1, v0

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_28

    const v4, 0x3ec28f5c    # 0.38f

    goto :goto_2b

    :cond_28
    const v4, 0x3e6147ae    # 0.22f

    :goto_2b
    mul-float v2, v2, v4

    add-float/2addr v3, v2

    aput v3, v1, v0

    .line 97
    const/4 v1, 0x1

    goto :goto_3a

    .line 99
    :cond_32
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barHeights:[F

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barTargets:[F

    aget v3, v3, v0

    aput v3, v2, v0

    .line 93
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 102
    :cond_3d
    return v1
.end method

.method private updateTargets()V
    .registers 14

    .line 80
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->playing:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->liveLevel:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_e

    :cond_b
    const v0, 0x3da3d70a    # 0.08f

    .line 81
    :goto_e
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->playing:Z

    const v2, 0x3f333333    # 0.7f

    if-nez v1, :cond_28

    .line 82
    const v0, 0x3d75c28f    # 0.06f

    const v1, 0x3d23d70a    # 0.04f

    iget v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->phase:F

    mul-float v3, v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr v0, v3

    .line 84
    :cond_28
    const/4 v1, 0x0

    :goto_29
    const/16 v3, 0x1c

    if-ge v1, v3, :cond_75

    .line 85
    iget v3, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->phase:F

    float-to-double v3, v3

    int-to-double v5, v1

    const-wide v7, 0x3fdae147ae147ae1L    # 0.42

    mul-double v7, v7, v5

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v7

    add-double/2addr v3, v7

    double-to-float v3, v3

    .line 86
    iget v4, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->phase:F

    float-to-double v9, v4

    const-wide v11, 0x3ff999999999999aL    # 1.6

    mul-double v9, v9, v11

    const-wide v11, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double v5, v5, v11

    add-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v7

    add-double/2addr v4, v7

    double-to-float v4, v4

    .line 87
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barTargets:[F

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float v3, v3, v7

    add-float/2addr v3, v6

    mul-float v3, v3, v0

    const v6, 0x3e99999a    # 0.3f

    mul-float v4, v4, v6

    add-float/2addr v4, v2

    mul-float v3, v3, v4

    aput v3, v5, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 89
    :cond_75
    return-void
.end method

.method private static withAlpha(IF)I
    .registers 3

    .line 161
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 162
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .line 123
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->getWidth()I

    move-result v1

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->getHeight()I

    move-result v2

    .line 126
    if-lez v1, :cond_98

    if-gtz v2, :cond_13

    goto/16 :goto_98

    .line 129
    :cond_13
    int-to-float v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    .line 130
    int-to-float v5, v2

    mul-float v5, v5, v4

    .line 131
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3eb851ec    # 0.36f

    mul-float v4, v4, v6

    .line 132
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3efae148    # 0.49f

    mul-float v1, v1, v2

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x40333333    # 2.8f

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->dp(Landroid/content/Context;F)F

    move-result v2

    .line 134
    iget-object v6, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    const/4 v2, 0x0

    :goto_40
    const/16 v6, 0x1c

    if-ge v2, v6, :cond_97

    .line 137
    int-to-double v6, v2

    const-wide v8, 0x3fccb91f3bbba140L    # 0.2243994752564138

    mul-double v6, v6, v8

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v6, v8

    double-to-float v6, v6

    .line 138
    iget-object v7, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barHeights:[F

    aget v7, v7, v2

    .line 139
    nop

    .line 140
    sub-float v8, v1, v4

    mul-float v8, v8, v7

    add-float/2addr v8, v4

    .line 141
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v6, v11

    mul-float v6, v6, v4

    add-float v12, v3, v6

    .line 142
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v6, v13

    mul-float v6, v6, v4

    add-float v13, v5, v6

    .line 143
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v6, v14

    mul-float v6, v6, v8

    add-float v14, v3, v6

    .line 144
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v6, v9

    mul-float v6, v6, v8

    add-float v15, v5, v6

    .line 145
    iget-object v6, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->blendColor(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v6, v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 148
    :cond_97
    return-void

    .line 127
    :cond_98
    :goto_98
    return-void
.end method

.method public run()V
    .registers 4

    .line 112
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->phase:F

    const v1, 0x3e3851ec    # 0.18f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->phase:F

    .line 113
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->updateTargets()V

    .line 114
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->smoothBars()Z

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->invalidate()V

    .line 116
    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->playing:Z

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->liveLevel:I

    if-lez v0, :cond_23

    .line 117
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    :cond_23
    return-void
.end method

.method public setLiveLevel(I)V
    .registers 3

    .line 75
    const/16 v0, 0x64

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->liveLevel:I

    .line 76
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->ensureAnimating()V

    .line 77
    return-void
.end method

.method public setPlaying(Z)V
    .registers 2

    .line 64
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->playing:Z

    .line 65
    if-eqz p1, :cond_8

    .line 66
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->ensureAnimating()V

    goto :goto_11

    .line 68
    :cond_8
    const/4 p1, 0x0

    iput p1, p0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->liveLevel:I

    .line 69
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->updateTargets()V

    .line 70
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->ensureAnimating()V

    .line 72
    :goto_11
    return-void
.end method
