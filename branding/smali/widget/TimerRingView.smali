.class public final Lcom/isaigu/gymapp/widget/TimerRingView;
.super Landroid/view/View;
.source "TimerRingView.java"


# static fields
.field private static final SEGMENTS:I = 0x3c

.field private static final SEGMENT_FILL:F = 0.7f


# instance fields
.field private bandHi:F

.field private bandLo:F

.field private final bandPaint:Landroid/graphics/Paint;

.field private beatBpm:I

.field private colorOverride:I

.field private curProcess:I

.field private dangerColor:I

.field private faceCenter:I

.field private faceColor:I

.field private final facePaint:Landroid/graphics/Paint;

.field private final faceStroke:Landroid/graphics/Paint;

.field private final glow:Landroid/graphics/Paint;

.field private final headFill:Landroid/graphics/Paint;

.field private final headRing:Landroid/graphics/Paint;

.field private final inner:Landroid/graphics/RectF;

.field private lastBeatMs:J

.field private marker:F

.field private final markerPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private maxDiameterPx:I

.field private maxProcess:I

.field private okColor:I

.field private remainingFraction:F

.field private final ring:Landroid/graphics/RectF;

.field private final segOff:Landroid/graphics/Paint;

.field private final segOn:Landroid/graphics/Paint;

.field private shownFraction:F

.field private strokeColor:I

.field private targetFraction:F

.field private textColor:I

.field private trackWidthPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->facePaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headFill:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->ring:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->inner:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->matrix:Landroid/graphics/Matrix;

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    .line 54
    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    .line 55
    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

    .line 59
    const v0, -0xe1e1e2

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceColor:I

    .line 60
    const v0, -0xd5d5d6

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceCenter:I

    .line 61
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->strokeColor:I

    .line 62
    const v0, -0x171718

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->textColor:I

    .line 63
    const v0, -0x7e387c

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->okColor:I

    .line 64
    const v0, -0x10acb0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->dangerColor:I

    .line 68
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->facePaint:Landroid/graphics/Paint;

    .line 33
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    .line 34
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    .line 35
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headFill:Landroid/graphics/Paint;

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    .line 39
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    .line 41
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->ring:Landroid/graphics/RectF;

    .line 42
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->inner:Landroid/graphics/RectF;

    .line 43
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->matrix:Landroid/graphics/Matrix;

    .line 47
    const/16 p2, 0x64

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 51
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 53
    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    .line 54
    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    .line 55
    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

    .line 59
    const p2, -0xe1e1e2

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceColor:I

    .line 60
    const p2, -0xd5d5d6

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceCenter:I

    .line 61
    const p2, -0xbbbbbc

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->strokeColor:I

    .line 62
    const p2, -0x171718

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->textColor:I

    .line 63
    const p2, -0x7e387c

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->okColor:I

    .line 64
    const p2, -0x10acb0

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->dangerColor:I

    .line 73
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->facePaint:Landroid/graphics/Paint;

    .line 33
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    .line 34
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    .line 35
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headFill:Landroid/graphics/Paint;

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    .line 39
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    .line 41
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->ring:Landroid/graphics/RectF;

    .line 42
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->inner:Landroid/graphics/RectF;

    .line 43
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->matrix:Landroid/graphics/Matrix;

    .line 47
    const/16 p2, 0x64

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 51
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 53
    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    .line 54
    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    .line 55
    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

    .line 59
    const p2, -0xe1e1e2

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceColor:I

    .line 60
    const p2, -0xd5d5d6

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceCenter:I

    .line 61
    const p2, -0xbbbbbc

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->strokeColor:I

    .line 62
    const p2, -0x171718

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->textColor:I

    .line 63
    const p2, -0x7e387c

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->okColor:I

    .line 64
    const p2, -0x10acb0

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->dangerColor:I

    .line 78
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private static alpha(II)I
    .registers 3

    .line 336
    const v0, 0xffffff

    and-int/2addr p0, v0

    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private beatLevel()F
    .registers 10

    .line 306
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    if-gtz v0, :cond_6

    .line 307
    const/4 v0, 0x0

    return v0

    .line 309
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 310
    const-wide/32 v2, 0xea60

    iget v4, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 311
    iget-wide v4, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->lastBeatMs:J

    sub-long v6, v0, v4

    cmp-long v8, v6, v2

    if-ltz v8, :cond_20

    .line 312
    sub-long v4, v0, v4

    rem-long/2addr v4, v2

    sub-long v4, v0, v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->lastBeatMs:J

    .line 314
    :cond_20
    iget-wide v4, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->lastBeatMs:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 315
    const-wide/high16 v1, -0x3ff0000000000000L    # -4.0

    float-to-double v3, v0

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static clamp01(F)F
    .registers 4

    .line 340
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p0, v1

    if-gez v2, :cond_9

    const/4 p0, 0x0

    goto :goto_f

    :cond_9
    cmpl-float v1, p0, v0

    if-lez v1, :cond_f

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_f
    :goto_f
    return p0
.end method

.method public static colorForRemaining(F)I
    .registers 3

    .line 181
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_a

    .line 182
    const p0, -0x1ac6cb

    return p0

    .line 184
    :cond_a
    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_13

    .line 185
    const p0, -0xbc5fb9

    return p0

    .line 187
    :cond_13
    sub-float/2addr v0, p0

    const/high16 p0, 0x42f00000    # 120.0f

    mul-float v0, v0, p0

    .line 188
    const/4 p0, 0x3

    new-array p0, p0, [F

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x1

    const v1, 0x3f6147ae    # 0.88f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3f75c28f    # 0.96f

    aput v1, p0, v0

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method private static dp(Landroid/content/Context;F)F
    .registers 3

    .line 344
    nop

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 344
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private drawDial(Landroid/graphics/Canvas;)V
    .registers 26

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 221
    const/high16 v8, 0x40000000    # 2.0f

    div-float v6, v1, v8

    .line 222
    div-float v5, v2, v8

    .line 223
    iget v3, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const v4, 0x3f733333    # 0.95f

    mul-float v3, v3, v4

    .line 224
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v8

    sub-float v4, v1, v3

    .line 225
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->ring:Landroid/graphics/RectF;

    sub-float v2, v6, v4

    sub-float v3, v5, v4

    add-float v9, v6, v4

    add-float v10, v5, v4

    invoke-virtual {v1, v2, v3, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 227
    nop

    .line 228
    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->targetFraction:F

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    sub-float/2addr v1, v2

    .line 229
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    const v3, 0x3ac49ba6    # 0.0015f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_51

    .line 230
    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    const v3, 0x3e6147ae    # 0.22f

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    .line 231
    const/16 v18, 0x1

    goto :goto_57

    .line 233
    :cond_51
    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->targetFraction:F

    iput v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    const/16 v18, 0x0

    .line 235
    :goto_57
    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->colorOverride:I

    const/high16 v19, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5e

    goto :goto_66

    :cond_5e
    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    sub-float v1, v19, v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v1

    :goto_66
    move v3, v1

    .line 238
    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    div-float/2addr v1, v8

    sub-float v1, v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    .line 239
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->facePaint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/RadialGradient;

    const v9, 0x3eb33333    # 0.35f

    mul-float v9, v9, v1

    sub-float v11, v5, v9

    const v9, 0x3fa66666    # 1.3f

    mul-float v12, v1, v9

    iget v13, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceCenter:I

    iget v14, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceColor:I

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v15

    move v10, v6

    move-object v8, v15

    move-object/from16 v15, v20

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 241
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->facePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 242
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    const/high16 v8, 0x43b40000    # 360.0f

    mul-float v9, v1, v8

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->beatLevel()F

    move-result v10

    .line 247
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v11, v9, v1

    if-lez v11, :cond_f0

    .line 248
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const v12, 0x3faccccd    # 1.35f

    const v13, 0x3ee66666    # 0.45f

    mul-float v13, v13, v10

    add-float/2addr v13, v12

    mul-float v2, v2, v13

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    const/high16 v2, 0x41e00000    # 28.0f

    const/high16 v12, 0x42600000    # 56.0f

    mul-float v12, v12, v10

    add-float/2addr v12, v2

    float-to-int v2, v12

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 251
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->ring:Landroid/graphics/RectF;

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v15, v3

    move v3, v12

    move v12, v4

    move v4, v9

    move v8, v5

    move v5, v13

    move v13, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_f4

    .line 247
    :cond_f0
    move v15, v3

    move v12, v4

    move v8, v5

    move v13, v6

    .line 255
    :goto_f4
    const/high16 v14, 0x40c00000    # 6.0f

    .line 256
    const v21, 0x40866666    # 4.2f

    .line 257
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 258
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 259
    new-instance v1, Landroid/graphics/SweepGradient;

    const/4 v2, 0x3

    new-array v3, v2, [I

    const/16 v4, 0x55

    .line 260
    invoke-static {v15, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v4

    aput v4, v3, v17

    aput v15, v3, v16

    const/4 v4, 0x2

    aput v15, v3, v4

    new-array v2, v2, [F

    const/16 v22, 0x0

    aput v22, v2, v17

    const v5, 0x3c23d70a    # 0.01f

    iget v6, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v2, v16

    aput v19, v2, v4

    invoke-direct {v1, v13, v8, v3, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 261
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->matrix:Landroid/graphics/Matrix;

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v6, v13, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 262
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 263
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 264
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 265
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 266
    const/4 v5, 0x0

    :goto_14f
    const/16 v1, 0x3c

    const/high16 v2, 0x40400000    # 3.0f

    if-ge v5, v1, :cond_187

    .line 267
    int-to-float v1, v5

    mul-float v1, v1, v14

    add-float v3, v1, v6

    const v4, 0x3f666668    # 0.9000001f

    add-float/2addr v3, v4

    .line 268
    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    .line 269
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->ring:Landroid/graphics/RectF;

    const/16 v16, 0x0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_16f

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    goto :goto_171

    :cond_16f
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    :goto_171
    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v4, v21

    move/from16 v23, v5

    move/from16 v5, v16

    const/high16 v16, -0x3d4c0000    # -90.0f

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 266
    add-int/lit8 v5, v23, 0x1

    const/high16 v6, -0x3d4c0000    # -90.0f

    goto :goto_14f

    .line 273
    :cond_187
    const/high16 v16, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float v4, v12, v1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v1

    sub-float v14, v4, v1

    .line 274
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->inner:Landroid/graphics/RectF;

    sub-float v6, v13, v14

    sub-float v5, v8, v14

    add-float v3, v13, v14

    add-float v4, v8, v14

    invoke-virtual {v1, v6, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 275
    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    cmpl-float v3, v1, v22

    if-ltz v3, :cond_1ec

    iget v3, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_1ec

    .line 276
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 277
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->inner:Landroid/graphics/RectF;

    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result v1

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v1, v1, v3

    add-float v4, v1, v16

    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result v1

    iget v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result v5

    sub-float/2addr v1, v5

    mul-float v5, v1, v3

    const/4 v6, 0x0

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 280
    :cond_1ec
    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

    cmpl-float v2, v1, v22

    if-ltz v2, :cond_244

    cmpg-float v2, v1, v19

    if-gtz v2, :cond_244

    .line 281
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v1, v1, v2

    add-float v1, v1, v16

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v3

    sub-float/2addr v14, v3

    .line 283
    iget v3, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v4, v12, v3

    .line 284
    float-to-double v5, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move/from16 v17, v15

    mul-double v14, v5, v19

    double-to-float v3, v14

    add-float/2addr v3, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v5, v5, v14

    double-to-float v5, v5

    add-float/2addr v5, v8

    float-to-double v14, v4

    .line 285
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v6, v14, v19

    double-to-float v4, v6

    add-float/2addr v4, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v14, v14, v1

    double-to-float v1, v14

    add-float v6, v8, v1

    iget-object v7, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    .line 284
    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_246

    .line 280
    :cond_244
    move/from16 v17, v15

    .line 289
    :goto_246
    if-lez v11, :cond_282

    .line 290
    add-float v9, v9, v16

    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 291
    float-to-double v3, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    double-to-float v5, v5

    add-float v6, v13, v5

    .line 292
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v3, v3, v1

    double-to-float v1, v3

    add-float v5, v8, v1

    .line 293
    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const v2, 0x3f1eb852    # 0.62f

    const v3, 0x3df5c28f    # 0.12f

    mul-float v10, v10, v3

    add-float/2addr v10, v2

    mul-float v1, v1, v10

    .line 294
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->headFill:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v6, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 295
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    move/from16 v4, v17

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    invoke-virtual {v3, v6, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 299
    :cond_282
    if-nez v18, :cond_288

    iget v1, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    if-lez v1, :cond_28b

    .line 300
    :cond_288
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->postInvalidateOnAnimation()V

    .line 302
    :cond_28b
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    .line 82
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    .line 83
    const/high16 v0, 0x43400000    # 192.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 84
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceColor:I

    const-string v1, "bg_card"

    invoke-static {p1, v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceColor:I

    .line 85
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceCenter:I

    const-string v1, "bg_surface"

    invoke-static {p1, v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceCenter:I

    .line 86
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->strokeColor:I

    const-string v1, "card_stroke"

    invoke-static {p1, v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->strokeColor:I

    .line 87
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->textColor:I

    const-string v1, "text_primary"

    invoke-static {p1, v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->textColor:I

    .line 88
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->okColor:I

    const-string v1, "impulse_accent"

    invoke-static {p1, v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->okColor:I

    .line 89
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->dangerColor:I

    const-string v1, "accent_primary"

    invoke-static {p1, v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->dangerColor:I

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->strokeColor:I

    const/16 v2, 0xaa

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_84
    if-ge v2, v0, :cond_95

    aget-object v4, v1, v2

    .line 95
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 98
    :cond_95
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->textColor:I

    const/16 v2, 0x22

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headFill:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->dangerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->okColor:I

    const/16 v1, 0xb0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/TimerRingView;->setWillNotDraw(Z)V

    .line 108
    return-void
.end method

.method private static themeColor(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    .line 328
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 329
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    :cond_18
    return p2

    .line 330
    :catchall_19
    move-exception p0

    .line 331
    return p2
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .line 320
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    .line 322
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 206
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_20

    goto :goto_2e

    .line 211
    :cond_20
    :try_start_20
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->drawDial(Landroid/graphics/Canvas;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    .line 215
    goto :goto_2d

    .line 212
    :catchall_24
    move-exception p1

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    .line 214
    const-string v0, "TimerRingView.onDraw"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :goto_2d
    return-void

    .line 208
    :cond_2e
    :goto_2e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 196
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 197
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 198
    if-lez p1, :cond_12

    iget p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    if-le p1, p2, :cond_14

    .line 199
    :cond_12
    iget p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 201
    :cond_14
    invoke-virtual {p0, p1, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMeasuredDimension(II)V

    .line 202
    return-void
.end method

.method public setBand(FF)V
    .registers 3

    .line 159
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    .line 160
    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    .line 161
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 162
    return-void
.end method

.method public setBeatBpm(I)V
    .registers 3

    .line 172
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_9

    const/16 v0, 0xe6

    if-gt p1, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    .line 173
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->postInvalidateOnAnimation()V

    .line 174
    return-void
.end method

.method public setCurProcess(I)V
    .registers 3

    .line 130
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 131
    int-to-float p1, p1

    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 132
    return-void
.end method

.method public setElapsedFraction(F)V
    .registers 4

    .line 141
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result p1

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 144
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    const/high16 v1, 0x3e800000    # 0.25f

    sub-float v1, v0, v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1f

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    .line 145
    :cond_1f
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    .line 147
    :cond_21
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->targetFraction:F

    .line 148
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->postInvalidateOnAnimation()V

    .line 149
    return-void
.end method

.method public setMarker(F)V
    .registers 2

    .line 166
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

    .line 167
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 168
    return-void
.end method

.method public setMaxDiameterDp(F)V
    .registers 3

    .line 113
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 114
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->requestLayout()V

    .line 115
    return-void
.end method

.method public setMaxProcess(I)V
    .registers 3

    .line 118
    if-gtz p1, :cond_3

    .line 119
    const/4 p1, 0x1

    .line 121
    :cond_3
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 122
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    if-le v0, p1, :cond_b

    .line 123
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 125
    :cond_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 126
    return-void
.end method

.method public setProgressColor(I)V
    .registers 2

    .line 153
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->colorOverride:I

    .line 154
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 155
    return-void
.end method

.method public setRemainingFraction(F)V
    .registers 3

    .line 136
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 137
    return-void
.end method
