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
    .registers 5

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

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
    iput v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    .line 54
    iput v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    .line 55
    iput v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

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
    .registers 6

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

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
    iput v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    .line 54
    iput v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    .line 55
    iput v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

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

    .line 73
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

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
    iput v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    .line 54
    iput v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    .line 55
    iput v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

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

    .line 78
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private static alpha(II)I
    .registers 5

    .prologue
    .line 324
    const v0, 0xffffff

    and-int/2addr v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private beatLevel()F
    .registers 7

    .prologue
    .line 294
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    if-gtz v0, :cond_6

    .line 295
    const/4 v0, 0x0

    .line 303
    :goto_5
    return v0

    .line 297
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 298
    const-wide/32 v2, 0xea60

    iget v4, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 299
    iget-wide v4, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->lastBeatMs:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_22

    .line 300
    iget-wide v4, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->lastBeatMs:J

    sub-long v4, v0, v4

    rem-long/2addr v4, v2

    sub-long v4, v0, v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->lastBeatMs:J

    .line 302
    :cond_22
    iget-wide v4, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->lastBeatMs:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 303
    const-wide/high16 v2, -0x3ff0000000000000L    # -4.0

    float-to-double v0, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_5
.end method

.method private static clamp01(F)F
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 328
    cmpg-float v2, p0, v0

    if-gez v2, :cond_9

    move p0, v0

    :cond_8
    :goto_8
    return p0

    :cond_9
    cmpl-float v0, p0, v1

    if-lez v0, :cond_8

    move p0, v1

    goto :goto_8
.end method

.method public static colorForRemaining(F)I
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 181
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_a

    .line 182
    const v0, -0x1ac6cb

    .line 188
    :goto_9
    return v0

    .line 184
    :cond_a
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_13

    .line 185
    const v0, -0xbc5fb9

    goto :goto_9

    .line 187
    :cond_13
    sub-float v0, v1, p0

    const/high16 v1, 0x42f00000    # 120.0f

    mul-float/2addr v0, v1

    .line 188
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const v2, 0x3f6147ae    # 0.88f

    aput v2, v1, v0

    const/4 v0, 0x2

    const v2, 0x3f75c28f    # 0.96f

    aput v2, v1, v0

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    goto :goto_9
.end method

.method private static dp(Landroid/content/Context;F)F
    .registers 4

    .prologue
    .line 332
    const/4 v0, 0x1

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 332
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

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
    const-string v0, "bg_card"

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceColor:I

    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceColor:I

    .line 85
    const-string v0, "bg_surface"

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceCenter:I

    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceCenter:I

    .line 86
    const-string v0, "card_stroke"

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->strokeColor:I

    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->strokeColor:I

    .line 87
    const-string v0, "text_primary"

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->textColor:I

    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->textColor:I

    .line 88
    const-string v0, "impulse_accent"

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->okColor:I

    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->okColor:I

    .line 89
    const-string v0, "accent_primary"

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->dangerColor:I

    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->themeColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->dangerColor:I

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->strokeColor:I

    const/16 v3, 0xaa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    aput-object v3, v2, v0

    array-length v3, v2

    move v0, v1

    :goto_85
    if-ge v0, v3, :cond_96

    aget-object v4, v2, v0

    .line 95
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 98
    :cond_96
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->textColor:I

    const/16 v3, 0x22

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headFill:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->dangerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->okColor:I

    const/16 v3, 0xb0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setWillNotDraw(Z)V

    .line 108
    return-void
.end method

.method private static themeColor(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 316
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 317
    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_19

    move-result p2

    .line 319
    :cond_18
    :goto_18
    return p2

    .line 318
    :catch_19
    move-exception v0

    goto :goto_18
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 308
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    .line 310
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 24

    .prologue
    .line 206
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getHeight()I

    move-result v3

    int-to-float v4, v3

    .line 209
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    .line 210
    const/high16 v5, 0x40000000    # 2.0f

    div-float v16, v4, v5

    .line 211
    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const v6, 0x3f733333    # 0.95f

    mul-float/2addr v5, v6

    .line 212
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v17, v2, v5

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->ring:Landroid/graphics/RectF;

    sub-float v4, v3, v17

    sub-float v5, v16, v17

    add-float v6, v3, v17

    add-float v7, v16, v17

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 215
    const/4 v2, 0x0

    .line 216
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->targetFraction:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    sub-float/2addr v4, v5

    .line 217
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ac49ba6    # 0.0015f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1b0

    .line 218
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    const v5, 0x3e6147ae    # 0.22f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    .line 219
    const/4 v2, 0x1

    move v14, v2

    .line 223
    :goto_59
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->colorOverride:I

    if-eqz v2, :cond_1bb

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->colorOverride:I

    move v15, v2

    .line 226
    :goto_64
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v2, v17, v2

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v4

    sub-float v9, v2, v4

    .line 227
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->facePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RadialGradient;

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v9

    sub-float v4, v16, v4

    const v5, 0x3fa66666    # 1.3f

    mul-float/2addr v5, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceCenter:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceColor:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->facePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->faceStroke:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    const/high16 v2, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    mul-float v7, v2, v4

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->beatLevel()F

    move-result v18

    .line 235
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v7, v2

    if-lez v2, :cond_101

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const v5, 0x3faccccd    # 1.35f

    const v6, 0x3ee66666    # 0.45f

    mul-float v6, v6, v18

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    const/high16 v4, 0x41e00000    # 28.0f

    const/high16 v5, 0x42600000    # 56.0f

    mul-float v5, v5, v18

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v15, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->ring:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->glow:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 243
    :cond_101
    const/high16 v4, 0x40c00000    # 6.0f

    .line 244
    const v2, 0x3f333333    # 0.7f

    mul-float v11, v4, v2

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    new-instance v2, Landroid/graphics/SweepGradient;

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v8, 0x55

    .line 248
    invoke-static {v15, v8}, Lcom/isaigu/gymapp/widget/TimerRingView;->alpha(II)I

    move-result v8

    aput v8, v5, v6

    const/4 v6, 0x1

    aput v15, v5, v6

    const/4 v6, 0x2

    aput v15, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v6, v8

    const/4 v8, 0x1

    const v9, 0x3c23d70a    # 0.01f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v8

    move/from16 v0, v16

    invoke-direct {v2, v3, v0, v5, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->matrix:Landroid/graphics/Matrix;

    const/high16 v6, -0x3d4c0000    # -90.0f

    move/from16 v0, v16

    invoke-virtual {v5, v6, v3, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 254
    const/4 v2, 0x0

    :goto_17d
    const/16 v5, 0x3c

    if-ge v2, v5, :cond_1ce

    .line 255
    const/high16 v5, -0x3d4c0000    # -90.0f

    int-to-float v6, v2

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    sub-float v6, v4, v11

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float v10, v5, v6

    .line 256
    int-to-float v5, v2

    mul-float/2addr v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    div-float/2addr v5, v6

    .line 257
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->ring:Landroid/graphics/RectF;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1c9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOn:Landroid/graphics/Paint;

    :goto_1a8
    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_17d

    .line 221
    :cond_1b0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->targetFraction:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    move v14, v2

    goto/16 :goto_59

    .line 223
    :cond_1bb
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v2

    move v15, v2

    goto/16 :goto_64

    .line 257
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->segOff:Landroid/graphics/Paint;

    goto :goto_1a8

    .line 261
    :cond_1ce
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v2, v17, v2

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v4

    sub-float/2addr v2, v4

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->inner:Landroid/graphics/RectF;

    sub-float v5, v3, v2

    sub-float v6, v16, v2

    add-float v8, v3, v2

    add-float v9, v16, v2

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 263
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_249

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_249

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 265
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->inner:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v10, v4, v5

    const/high16 v4, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandHi:F

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandLo:F

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float v11, v4, v5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->bandPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 268
    :cond_249
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2ad

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2ad

    .line 269
    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v6

    sub-float/2addr v2, v6

    .line 271
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float v6, v6, v17

    .line 272
    float-to-double v8, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    add-float v9, v3, v8

    float-to-double v10, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v2, v10

    add-float v10, v16, v2

    float-to-double v12, v6

    .line 273
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v12, v12, v20

    double-to-float v2, v12

    add-float v11, v3, v2

    float-to-double v12, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v12

    double-to-float v2, v4

    add-float v12, v16, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->markerPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    .line 272
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 277
    :cond_2ad
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v7, v2

    if-lez v2, :cond_2f7

    .line 278
    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float/2addr v2, v7

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 279
    move/from16 v0, v17

    float-to-double v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v2, v6

    add-float/2addr v2, v3

    .line 280
    move/from16 v0, v17

    float-to-double v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-float v3, v4

    add-float v3, v3, v16

    .line 281
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const v5, 0x3f1eb852    # 0.62f

    const v6, 0x3df5c28f    # 0.12f

    mul-float v6, v6, v18

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    .line 282
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->headFill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->headRing:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 287
    :cond_2f7
    if-nez v14, :cond_2ff

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    if-lez v2, :cond_302

    .line 288
    :cond_2ff
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->postInvalidateOnAnimation()V

    .line 290
    :cond_302
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 196
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 197
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 198
    if-lez v0, :cond_12

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    if-le v0, v1, :cond_14

    .line 199
    :cond_12
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 201
    :cond_14
    invoke-virtual {p0, v0, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMeasuredDimension(II)V

    .line 202
    return-void
.end method

.method public setBand(FF)V
    .registers 3

    .prologue
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

    .prologue
    .line 172
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_e

    const/16 v0, 0xe6

    if-gt p1, v0, :cond_e

    :goto_8
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->beatBpm:I

    .line 173
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->postInvalidateOnAnimation()V

    .line 174
    return-void

    .line 172
    :cond_e
    const/4 p1, 0x0

    goto :goto_8
.end method

.method public setCurProcess(I)V
    .registers 4

    .prologue
    .line 130
    const/4 v0, 0x0

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 131
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 132
    return-void
.end method

.method public setElapsedFraction(F)V
    .registers 5

    .prologue
    .line 141
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result v0

    .line 142
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 144
    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    const/high16 v2, 0x3e800000    # 0.25f

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_20

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_22

    .line 145
    :cond_20
    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->shownFraction:F

    .line 147
    :cond_22
    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->targetFraction:F

    .line 148
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->postInvalidateOnAnimation()V

    .line 149
    return-void
.end method

.method public setMarker(F)V
    .registers 2

    .prologue
    .line 166
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->marker:F

    .line 167
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 168
    return-void
.end method

.method public setMaxDiameterDp(F)V
    .registers 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 114
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->requestLayout()V

    .line 115
    return-void
.end method

.method public setMaxProcess(I)V
    .registers 4

    .prologue
    .line 118
    if-gtz p1, :cond_3

    .line 119
    const/4 p1, 0x1

    .line 121
    :cond_3
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 122
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    if-le v0, v1, :cond_f

    .line 123
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 125
    :cond_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 126
    return-void
.end method

.method public setProgressColor(I)V
    .registers 2

    .prologue
    .line 153
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->colorOverride:I

    .line 154
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 155
    return-void
.end method

.method public setRemainingFraction(F)V
    .registers 4

    .prologue
    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->clamp01(F)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 137
    return-void
.end method
