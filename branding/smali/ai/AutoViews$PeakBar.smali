.class public final Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;
.super Landroid/view/View;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeakBar"
.end annotation


# instance fields
.field private final fill:Landroid/graphics/Paint;

.field private lastH:I

.field private final line:Landroid/graphics/Paint;

.field private final tri:Landroid/graphics/Path;

.field private final txt:Landroid/graphics/Paint;

.field private value:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 492
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 484
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->fill:Landroid/graphics/Paint;

    .line 485
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    .line 486
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    .line 487
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    .line 493
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 495
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 497
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 498
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    const/high16 v13, 0x3fa00000    # 1.25f

    const/4 v1, 0x0

    const/high16 v12, 0x40c00000    # 6.0f

    const/high16 v11, 0x40000000    # 2.0f

    .line 511
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->getWidth()I

    move-result v8

    .line 512
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->getHeight()I

    move-result v0

    .line 513
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    .line 514
    int-to-float v3, v0

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v4

    sub-float v4, v3, v4

    .line 515
    int-to-float v3, v8

    div-float/2addr v3, v11

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 516
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->lastH:I

    if-eq v0, v3, :cond_89

    .line 517
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->lastH:I

    .line 519
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    array-length v0, v0

    new-array v5, v0, [I

    .line 520
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    array-length v0, v0

    new-array v6, v0, [F

    .line 521
    const/4 v0, 0x0

    :goto_3e
    array-length v3, v5

    if-ge v0, v3, :cond_5b

    .line 522
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    .line 523
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    aget v7, v7, v3

    aput v7, v5, v0

    .line 524
    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v10, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    aget v3, v10, v3

    div-float/2addr v3, v13

    sub-float v3, v7, v3

    aput v3, v6, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 526
    :cond_5b
    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->fill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 527
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    int-to-float v1, v8

    div-float/2addr v1, v11

    sub-float/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 529
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    int-to-float v1, v8

    div-float/2addr v1, v11

    add-float/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 530
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    int-to-float v1, v8

    div-float/2addr v1, v11

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 531
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 533
    :cond_89
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->fill:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_c7

    const/16 v0, 0xeb

    :goto_91
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 534
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 535
    sub-float v0, v4, v2

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->value:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v13

    sub-float v6, v4, v0

    .line 536
    sub-float v0, v6, v2

    mul-float/2addr v0, v9

    sub-float v1, v4, v2

    div-float/2addr v0, v1

    .line 537
    sub-float v0, v9, v0

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    add-float/2addr v0, v1

    .line 538
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    int-to-float v1, v8

    div-float/2addr v1, v11

    sub-float/2addr v1, v0

    int-to-float v2, v8

    div-float/2addr v2, v11

    add-float v3, v2, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 540
    return-void

    .line 533
    :cond_c7
    const/16 v0, 0xff

    goto :goto_91
.end method

.method public set(D)V
    .registers 8

    .prologue
    .line 502
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 503
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->value:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3ba3d70a    # 0.005f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_21

    .line 504
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->value:F

    .line 505
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->invalidate()V

    .line 507
    :cond_21
    return-void
.end method
