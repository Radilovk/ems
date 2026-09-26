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
    .registers 4

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

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

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
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    .line 31
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    .line 34
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    .line 39
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    .line 41
    const p2, -0x994496

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    .line 42
    const p2, -0xa8400

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    .line 43
    const p2, -0x171718

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    .line 44
    const p2, -0x616162

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    .line 45
    const p2, 0x33ffffff

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTrack:I

    .line 46
    const/16 p2, -0x4d00

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorWarn:I

    .line 47
    const p2, -0x1ac6cb

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorBad:I

    .line 60
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    .line 31
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    .line 34
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    .line 39
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    .line 41
    const p2, -0x994496

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    .line 42
    const p2, -0xa8400

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    .line 43
    const p2, -0x171718

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    .line 44
    const p2, -0x616162

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    .line 45
    const p2, 0x33ffffff

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTrack:I

    .line 46
    const/16 p2, -0x4d00

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorWarn:I

    .line 47
    const p2, -0x1ac6cb

    iput p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorBad:I

    .line 65
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private dp(F)F
    .registers 4

    .line 223
    nop

    .line 224
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 223
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private drawFill(Landroid/graphics/Canvas;FFFFF)V
    .registers 9

    .line 194
    const v0, 0x3ba3d70a    # 0.005f

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_8

    .line 195
    return-void

    .line 197
    :cond_8
    sub-float/2addr p3, p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p6}, Ljava/lang/Math;->min(FF)F

    move-result p6

    mul-float p3, p3, p6

    add-float/2addr p3, p2

    .line 198
    iget-object p6, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p5, v0

    sub-float v1, p4, v0

    add-float/2addr p5, p2

    invoke-static {p3, p5}, Ljava/lang/Math;->max(FF)F

    move-result p3

    add-float/2addr p4, v0

    invoke-virtual {p6, p2, v1, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 199
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 200
    return-void
.end method

.method private drawIcon(Landroid/graphics/Canvas;Ljava/lang/String;F)V
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3eb851ec    # 0.36f

    mul-float v0, v0, v1

    add-float/2addr p3, v0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    return-void
.end method

.method private drawLatencyChip(Landroid/graphics/Canvas;FFF)V
    .registers 11

    .line 206
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasBleLatencySample()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 207
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    const/16 v2, 0x3c

    if-gt v0, v2, :cond_27

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    goto :goto_30

    :cond_27
    const/16 v2, 0x78

    if-gt v0, v2, :cond_2e

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorWarn:I

    goto :goto_30

    :cond_2e
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorBad:I

    .line 210
    :goto_30
    goto :goto_36

    .line 211
    :cond_31
    nop

    .line 212
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    const-string v1, "BLE \u2014"

    .line 214
    :goto_36
    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v2

    .line 215
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v4, p4, v2

    add-float v5, p4, v2

    invoke-virtual {v3, p2, v4, p3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    const p3, 0x3e4ccccd    # 0.2f

    invoke-static {v0, p3}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->withAlpha(IF)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v2, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 218
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result p3

    const v0, 0x3eb851ec    # 0.36f

    mul-float p3, p3, v0

    add-float/2addr p4, p3

    iget-object p3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, p4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    return-void
.end method

.method private drawTrack(Landroid/graphics/Canvas;FFFF)V
    .registers 8

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p5, v1

    sub-float v1, p4, p5

    add-float/2addr p4, p5

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 190
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, p5, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 191
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 70
    :try_start_0
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

    move-result-object p1

    const v0, 0x7f0600e7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 75
    goto :goto_36

    .line 74
    :catchall_35
    move-exception p1

    .line 76
    :goto_36
    iget p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    const v0, 0x3e6147ae    # 0.22f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->withAlpha(IF)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTrack:I

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    const v1, 0x3e8f5c29    # 0.28f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->withAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorTextSecondary:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->sp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorText:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->sp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 87
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->sp(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 89
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->chipTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->setWillNotDraw(Z)V

    .line 91
    return-void
.end method

.method private sp(F)F
    .registers 4

    .line 228
    nop

    .line 229
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 228
    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private static withAlpha(IF)I
    .registers 3

    .line 233
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 234
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

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
    .registers 22

    .line 138
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getWidth()I

    move-result v0

    int-to-float v9, v0

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 141
    const/4 v1, 0x0

    cmpg-float v2, v9, v1

    if-lez v2, :cond_12c

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1c

    goto/16 :goto_12c

    .line 144
    :cond_1c
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {v7, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v10

    .line 145
    const/high16 v1, 0x42800000    # 64.0f

    invoke-direct {v7, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v1

    .line 146
    nop

    .line 147
    sub-float v11, v9, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-direct {v7, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v1

    sub-float v12, v11, v1

    .line 148
    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {v7, v1}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v13

    .line 149
    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v0, v14

    .line 151
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v6

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorStrength()I

    move-result v5

    .line 155
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v4, v15, v0

    .line 156
    const-string v0, "\u266a"

    invoke-direct {v7, v8, v0, v4}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawIcon(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v12

    move/from16 v16, v4

    move v14, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawTrack(Landroid/graphics/Canvas;FFFF)V

    .line 158
    iget-object v0, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    iget v1, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorGreen:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget v0, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->musicShown:F

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v18, v0, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v19, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawFill(Landroid/graphics/Canvas;FFFFF)V

    .line 160
    move/from16 v0, v16

    invoke-direct {v7, v8, v11, v9, v0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawLatencyChip(Landroid/graphics/Canvas;FFF)V

    .line 163
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v15, v15, v0

    .line 164
    const-string v0, "\u26a1"

    invoke-direct {v7, v8, v0, v15}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawIcon(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    .line 165
    move-object/from16 v0, p0

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawTrack(Landroid/graphics/Canvas;FFFF)V

    .line 166
    sub-float v9, v12, v10

    .line 167
    if-lez v14, :cond_a5

    .line 168
    iget-object v0, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v13, v1

    sub-float v1, v15, v2

    int-to-float v3, v14

    mul-float v3, v3, v9

    div-float v3, v3, v17

    add-float/2addr v3, v10

    add-float v4, v15, v2

    invoke-virtual {v0, v10, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 169
    iget-object v0, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->rect:Landroid/graphics/RectF;

    iget-object v1, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->bandPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 171
    :cond_a5
    iget-object v0, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->fillPaint:Landroid/graphics/Paint;

    iget v1, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->colorOrange:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget v0, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    div-float v6, v0, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v12

    move v4, v15

    move v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->drawFill(Landroid/graphics/Canvas;FFFFF)V

    .line 173
    const/16 v0, 0x64

    const/4 v1, 0x1

    move/from16 v6, v19

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v9, v9, v0

    div-float v9, v9, v17

    add-float v3, v10, v9

    .line 174
    sub-float v2, v15, v13

    add-float v4, v15, v13

    iget-object v5, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->markerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    nop

    .line 179
    iget-object v2, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const v3, 0x3eb851ec    # 0.36f

    mul-float v2, v2, v3

    add-float/2addr v15, v2

    .line 180
    iget-object v2, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v11, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 181
    iget-object v2, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v11, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {v7, v0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v0

    add-float/2addr v11, v0

    iget-object v0, v7, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v11, v15, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 182
    return-void

    .line 142
    :cond_12c
    :goto_12c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 111
    const/high16 v0, 0x42600000    # 56.0f

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->dp(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->setMeasuredDimension(II)V

    .line 112
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 129
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 130
    iget-boolean p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->attached:Z

    if-eqz p1, :cond_13

    if-nez p2, :cond_13

    .line 131
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_13
    return-void
.end method

.method public run()V
    .registers 7

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    .line 117
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v2

    int-to-float v2, v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 118
    :goto_e
    if-eqz v0, :cond_15

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    int-to-float v1, v0

    .line 119
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->musicShown:F

    sub-float v3, v2, v0

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3e800000    # 0.25f

    cmpl-float v2, v2, v0

    if-lez v2, :cond_26

    const v2, 0x3f19999a    # 0.6f

    goto :goto_28

    :cond_26
    const/high16 v2, 0x3e800000    # 0.25f

    :goto_28
    mul-float v3, v3, v2

    add-float/2addr v0, v3

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->musicShown:F

    .line 120
    iget v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    sub-float v2, v1, v0

    cmpl-float v1, v1, v0

    if-lez v1, :cond_36

    goto :goto_38

    :cond_36
    const/high16 v4, 0x3e800000    # 0.25f

    :goto_38
    mul-float v2, v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->impulseShown:F

    .line 121
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->invalidate()V

    .line 122
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->attached:Z

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_51

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x21

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :cond_51
    return-void
.end method
