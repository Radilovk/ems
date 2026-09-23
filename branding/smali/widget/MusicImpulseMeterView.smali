.class public final Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;
.super Landroid/view/View;
.source "MusicImpulseMeterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FRAME_MS:J = 0x21L

.field private static final LATENCY_OK_MS:I = 0x3c

.field private static final LATENCY_WARN_MS:I = 0x78

.field private static final RES_GREEN:I = 0x7f06006f

.field private static final RES_ORANGE:I = 0x7f060070

.field private static final RES_TEXT_PRIMARY:I = 0x7f0600e6

.field private static final RES_TEXT_SECONDARY:I = 0x7f0600e7


# instance fields
.field private attached:Z

.field private final bandPaint:Landroid/graphics/Paint;

.field private final chipPaint:Landroid/graphics/Paint;

.field private final chipTextPaint:Landroid/graphics/Paint;

.field private colorBad:I

.field private colorGreen:I

.field private colorOrange:I

.field private colorText:I

.field private colorTextSecondary:I

.field private colorTrack:I

.field private colorWarn:I

.field private final fillPaint:Landroid/graphics/Paint;

.field private final handler:Landroid/os/Handler;

.field private impulseShown:F

.field private final labelPaint:Landroid/graphics/Paint;

.field private final markerPaint:Landroid/graphics/Paint;

.field private musicShown:F

.field private final rect:Landroid/graphics/RectF;

.field private final trackPaint:Landroid/graphics/Paint;

.field private final valuePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    .line 41
    const v0, -0x994496

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    .line 42
    const v0, -0xa8400

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    .line 43
    const v0, -0x171718

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    .line 44
    const v0, -0x616162

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    .line 45
    const v0, 0x33ffffff

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTrack:I

    .line 46
    const/16 v0, -0x4d00

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorWarn:I

    .line 47
    const v0, -0x1ac6cb

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorBad:I

    .line 55
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    .line 41
    const v0, -0x994496

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    .line 42
    const v0, -0xa8400

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    .line 43
    const v0, -0x171718

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    .line 44
    const v0, -0x616162

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    .line 45
    const v0, 0x33ffffff

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTrack:I

    .line 46
    const/16 v0, -0x4d00

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorWarn:I

    .line 47
    const v0, -0x1ac6cb

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorBad:I

    .line 60
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    .line 41
    const v0, -0x994496

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    .line 42
    const v0, -0xa8400

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    .line 43
    const v0, -0x171718

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    .line 44
    const v0, -0x616162

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    .line 45
    const v0, 0x33ffffff

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTrack:I

    .line 46
    const/16 v0, -0x4d00

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorWarn:I

    .line 47
    const v0, -0x1ac6cb

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorBad:I

    .line 65
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private dp(F)F
    .registers 4

    .prologue
    .line 223
    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 223
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private drawFill(Landroid/graphics/Canvas;FFFFF)V
    .registers 12

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 194
    const v0, 0x3ba3d70a    # 0.005f

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_a

    .line 200
    :goto_9
    return-void

    .line 197
    :cond_a
    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    .line 198
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    div-float v2, p5, v4

    sub-float v2, p4, v2

    add-float v3, p2, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v3, p5, v4

    add-float/2addr v3, p4

    invoke-virtual {v1, p2, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    div-float v2, p5, v4

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_9
.end method

.method private drawIcon(Landroid/graphics/Canvas;Ljava/lang/String;F)V
    .registers 7

    .prologue
    .line 185
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const v2, 0x3eb851ec    # 0.36f

    mul-float/2addr v1, v2

    add-float/2addr v1, p3

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    return-void
.end method

.method private drawLatencyChip(Landroid/graphics/Canvas;FFF)V
    .registers 12

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 206
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasBleLatencySample()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 207
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    const/16 v2, 0x3c

    if-gt v0, v2, :cond_6f

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    .line 214
    :goto_2b
    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v2

    .line 215
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    div-float v4, v2, v6

    sub-float v4, p4, v4

    div-float v5, v2, v6

    add-float/2addr v5, p4

    invoke-virtual {v3, p2, v4, p3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->withAlpha(IF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    div-float v4, v2, v6

    div-float/2addr v2, v6

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 218
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const v3, 0x3eb851ec    # 0.36f

    mul-float/2addr v2, v3

    add-float/2addr v2, p4

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    return-void

    .line 209
    :cond_6f
    const/16 v2, 0x78

    if-gt v0, v2, :cond_76

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorWarn:I

    goto :goto_2b

    :cond_76
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorBad:I

    goto :goto_2b

    .line 211
    :cond_79
    const-string v1, "BLE \u2014"

    .line 212
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    goto :goto_2b
.end method

.method private drawTrack(Landroid/graphics/Canvas;FFFF)V
    .registers 10

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    div-float v1, p5, v3

    sub-float v1, p4, v1

    div-float v2, p5, v3

    add-float/2addr v2, p4

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    div-float v1, p5, v3

    div-float v2, p5, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 191
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 70
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_b3

    .line 76
    :goto_35
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    const v1, 0x3e6147ae    # 0.22f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->withAlpha(IF)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTrack:I

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTrack:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    const v2, 0x3e8f5c29    # 0.28f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->withAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->sp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->sp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->sp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->setWillNotDraw(Z)V

    .line 91
    return-void

    .line 74
    :catch_b3
    move-exception v0

    goto :goto_35
.end method

.method private sp(F)F
    .registers 4

    .prologue
    .line 228
    const/4 v0, 0x2

    .line 229
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 228
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private static withAlpha(IF)I
    .registers 5

    .prologue
    .line 233
    const/4 v0, 0x0

    const/16 v1, 0xff

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 234
    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->attached:Z

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->attached:Z

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 106
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getWidth()I

    move-result v0

    int-to-float v11, v0

    .line 140
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 141
    const/4 v1, 0x0

    cmpg-float v1, v11, v1

    if-lez v1, :cond_17

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_18

    .line 182
    :cond_17
    :goto_17
    return-void

    .line 144
    :cond_18
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v2

    .line 145
    const/high16 v1, 0x42800000    # 64.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v12

    .line 147
    sub-float v1, v11, v12

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v3

    sub-float v3, v1, v3

    .line 148
    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v5

    .line 149
    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 151
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v13

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorStrength()I

    move-result v8

    .line 155
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v4, v7, v0

    .line 156
    const-string v0, "\u266a"

    invoke-direct {p0, p1, v0, v4}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawIcon(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    move-object v0, p0

    move-object v1, p1

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawTrack(Landroid/graphics/Canvas;FFFF)V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->musicShown:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawFill(Landroid/graphics/Canvas;FFFFF)V

    .line 160
    sub-float v0, v11, v12

    invoke-direct {p0, p1, v0, v11, v4}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawLatencyChip(Landroid/graphics/Canvas;FFF)V

    .line 163
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v4, v7, v0

    .line 164
    const-string v0, "\u26a1"

    invoke-direct {p0, p1, v0, v4}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawIcon(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    move-object v0, p0

    move-object v1, p1

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawTrack(Landroid/graphics/Canvas;FFFF)V

    .line 166
    sub-float v7, v3, v2

    .line 167
    if-lez v8, :cond_9c

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v5, v1

    sub-float v1, v4, v1

    int-to-float v6, v8

    mul-float/2addr v6, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v6, v8

    add-float/2addr v6, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    add-float/2addr v8, v4

    invoke-virtual {v0, v2, v1, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 171
    :cond_9c
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawFill(Landroid/graphics/Canvas;FFFFF)V

    .line 173
    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    add-float v6, v2, v0

    .line 174
    sub-float v7, v4, v5

    add-float v9, v4, v5

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    sub-float v2, v11, v12

    .line 179
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const v5, 0x3eb851ec    # 0.36f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 180
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 181
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_17
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 111
    const/high16 v1, 0x42600000    # 56.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->setMeasuredDimension(II)V

    .line 112
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 130
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->attached:Z

    if-eqz v0, :cond_13

    if-nez p2, :cond_13

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_13
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v0, 0x0

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v4

    .line 117
    if-eqz v4, :cond_4f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v1

    int-to-float v1, v1

    .line 118
    :goto_11
    if-eqz v4, :cond_18

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    int-to-float v0, v0

    .line 119
    :cond_18
    iget v4, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->musicShown:F

    iget v5, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->musicShown:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->musicShown:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_51

    move v1, v2

    :goto_25
    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    iput v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->musicShown:F

    .line 120
    iget v1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_53

    :goto_35
    mul-float v0, v4, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    .line 121
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->invalidate()V

    .line 122
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->attached:Z

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4e

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x21

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :cond_4e
    return-void

    :cond_4f
    move v1, v0

    .line 117
    goto :goto_11

    :cond_51
    move v1, v3

    .line 119
    goto :goto_25

    :cond_53
    move v2, v3

    .line 120
    goto :goto_35
.end method
