.class public final Lcom/isaigu/gymapp/ai/AutoViews$Timeline;
.super Landroid/view/View;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timeline"
.end annotation


# static fields
.field private static final N:I = 0xf0


# instance fields
.field private final area:Landroid/graphics/Paint;

.field private final cv:[F

.field private hrCapY:F

.field private hrHi:F

.field private final hrLine:Landroid/graphics/Paint;

.field private hrLo:F

.field private final hrPath:Landroid/graphics/Path;

.field private final hrv:[F

.field private final hv:[F

.field private names:[Ljava/lang/String;

.field private final now:Landroid/graphics/Paint;

.field private nowS:F

.field private final path:Landroid/graphics/Path;

.field private final phase:[I

.field private final sep:Landroid/graphics/Paint;

.field private totalS:F

.field private final txt:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/16 v1, 0xf0

    const/4 v2, 0x1

    .line 485
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 466
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    .line 467
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    .line 468
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    .line 469
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    .line 470
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    .line 471
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    .line 472
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    .line 473
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    .line 475
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    .line 476
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    .line 477
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    .line 478
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    .line 479
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    .line 482
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrCapY:F

    .line 486
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 487
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 488
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 489
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 490
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 491
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 492
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 493
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->getWidth()I

    move-result v9

    .line 564
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->getHeight()I

    move-result v8

    .line 565
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v10

    .line 566
    int-to-float v0, v8

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    sub-float v11, v0, v1

    .line 567
    int-to-float v0, v9

    const/high16 v1, 0x43700000    # 240.0f

    div-float v12, v0, v1

    .line 568
    const/16 v0, 0xf0

    new-array v5, v0, [I

    .line 569
    const/16 v0, 0xf0

    new-array v6, v0, [F

    .line 570
    const/4 v0, 0x0

    :goto_25
    const/16 v1, 0xf0

    if-ge v0, v1, :cond_3d

    .line 571
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    aget v1, v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->heat(D)I

    move-result v1

    aput v1, v5, v0

    .line 572
    int-to-float v1, v0

    const/high16 v2, 0x436f0000    # 239.0f

    div-float/2addr v1, v2

    aput v1, v6, v0

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 574
    :cond_3d
    iget-object v13, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v9

    const/4 v4, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 576
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 577
    const/4 v0, 0x0

    :goto_59
    const/16 v1, 0xf0

    if-ge v0, v1, :cond_7b

    .line 578
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    int-to-float v2, v0

    mul-float/2addr v2, v12

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v12, v3

    add-float/2addr v2, v3

    sub-float v3, v11, v10

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    aget v5, v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float v3, v11, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 580
    :cond_7b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    int-to-float v1, v9

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 582
    int-to-float v0, v9

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->nowS:F

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v13, v0, v1

    .line 583
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 584
    const/4 v0, 0x0

    const/4 v1, 0x0

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v13, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 585
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 586
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 587
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 588
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 589
    const/4 v0, 0x0

    int-to-float v1, v9

    int-to-float v2, v8

    invoke-virtual {p1, v13, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 590
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_160

    const/16 v0, 0x5a

    :goto_bf
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 591
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 594
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    const/4 v1, 0x0

    int-to-float v3, v9

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v11

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 597
    const/4 v1, -0x1

    .line 598
    const/high16 v6, -0x40800000    # -1.0f

    .line 599
    const/4 v0, 0x0

    move v8, v0

    :goto_e8
    const/16 v0, 0xf0

    if-ge v8, v0, :cond_167

    .line 600
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    aget v0, v0, v8

    if-eq v0, v1, :cond_249

    .line 601
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    aget v7, v0, v8

    .line 602
    int-to-float v0, v8

    mul-float v1, v0, v12

    .line 603
    if-lez v8, :cond_118

    .line 604
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x88

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 605
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v2, v10, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 607
    :cond_118
    if-ltz v7, :cond_164

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_164

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    aget-object v0, v0, v7

    .line 609
    :goto_123
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 610
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v1

    int-to-float v3, v9

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_245

    .line 611
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 612
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 613
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    move v1, v7

    .line 599
    :goto_15b
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v6, v0

    goto :goto_e8

    .line 590
    :cond_160
    const/16 v0, 0x6e

    goto/16 :goto_bf

    .line 607
    :cond_164
    const-string v0, ""

    goto :goto_123

    .line 618
    :cond_167
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_219

    .line 619
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 620
    const/4 v0, 0x0

    .line 621
    const/4 v1, 0x0

    :goto_175
    const/16 v2, 0xf0

    if-ge v1, v2, :cond_1c0

    .line 622
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_186

    .line 623
    const/4 v0, 0x0

    .line 621
    :goto_183
    add-int/lit8 v1, v1, 0x1

    goto :goto_175

    .line 626
    :cond_186
    sub-float v2, v11, v10

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    aget v5, v5, v1

    iget v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    iget v7, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float v2, v11, v2

    .line 627
    if-eqz v0, :cond_1b2

    .line 628
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    int-to-float v4, v1

    mul-float/2addr v4, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v12, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_183

    .line 630
    :cond_1b2
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    int-to-float v3, v1

    mul-float/2addr v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v12, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 631
    const/4 v0, 0x1

    goto :goto_183

    .line 634
    :cond_1c0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const v1, -0xb293

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 636
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 637
    sub-float v0, v11, v10

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrCapY:F

    mul-float/2addr v0, v1

    sub-float v2, v11, v0

    .line 638
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const v1, -0xb293

    const/16 v3, 0x99

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 640
    const/4 v1, 0x0

    int-to-float v3, v9

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 641
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 643
    :cond_219
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 644
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v2, v10, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v13

    move v3, v13

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 645
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v0, v10, v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    invoke-virtual {p1, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 646
    return-void

    :cond_245
    move v0, v6

    move v1, v7

    goto/16 :goto_15b

    :cond_249
    move v0, v6

    goto/16 :goto_15b
.end method

.method public set(Ljava/util/List;Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;DD[Ljava/lang/String;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;",
            "Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;",
            "DD[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 512
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    .line 513
    if-eqz p2, :cond_4f

    invoke-virtual/range {p2 .. p4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->sessionAt(D)D

    move-result-wide v2

    move-wide v8, v2

    .line 514
    :goto_d
    if-eqz p2, :cond_52

    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    sub-double/2addr v4, v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-double v2, v2, p5

    .line 515
    :goto_1c
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    .line 516
    move-wide/from16 v0, p5

    double-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->nowS:F

    .line 517
    if-eqz p2, :cond_55

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    .line 518
    :goto_34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v4, v2

    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 519
    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v4, v2

    .line 520
    goto :goto_39

    :cond_4f
    move-wide/from16 v8, p5

    .line 513
    goto :goto_d

    :cond_52
    move-wide/from16 v2, p5

    .line 514
    goto :goto_1c

    .line 517
    :cond_55
    const-wide/16 v2, 0x0

    goto :goto_34

    .line 521
    :cond_58
    const-wide v2, 0x3fa999999999999aL    # 0.05

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 522
    const/16 v2, 0xf0

    new-array v7, v2, [F

    .line 523
    const/16 v2, 0xf0

    new-array v12, v2, [F

    .line 524
    const/4 v3, 0x0

    .line 525
    const/4 v4, 0x0

    .line 526
    const/4 v2, 0x0

    move v6, v2

    :goto_6d
    const/16 v2, 0xf0

    if-ge v6, v2, :cond_142

    .line 527
    int-to-double v14, v6

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    float-to-double v0, v2

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x406e000000000000L    # 240.0

    div-double v14, v14, v16

    .line 528
    const/4 v2, 0x0

    .line 529
    cmpg-double v5, v14, p5

    if-gtz v5, :cond_f6

    .line 530
    :goto_88
    add-int/lit8 v2, v3, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_a8

    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v5, 0x0

    aget v2, v2, v5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    cmpg-double v2, v16, v14

    if-gtz v2, :cond_a8

    .line 531
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_88

    .line 533
    :cond_a8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ed

    const/4 v2, 0x0

    :goto_af
    move-object v5, v2

    .line 541
    :goto_b0
    if-eqz v5, :cond_13a

    const/4 v2, 0x2

    aget v2, v5, v2

    float-to-double v0, v2

    move-wide/from16 v16, v0

    div-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-float v2, v0

    :goto_bd
    aput v2, v7, v6

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    cmpg-double v2, v14, p5

    if-gtz v2, :cond_13c

    if-eqz v5, :cond_13c

    array-length v2, v5

    const/4 v14, 0x5

    if-le v2, v14, :cond_13c

    const/4 v2, 0x5

    aget v2, v5, v2

    :goto_d0
    aput v2, v13, v6

    .line 543
    if-eqz v5, :cond_13e

    const/4 v2, 0x3

    aget v2, v5, v2

    :goto_d7
    aput v2, v12, v6

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    if-eqz v5, :cond_140

    array-length v2, v5

    const/4 v14, 0x4

    if-le v2, v14, :cond_140

    const/4 v2, 0x4

    aget v2, v5, v2

    float-to-int v2, v2

    :goto_e7
    aput v2, v13, v6

    .line 526
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_6d

    .line 533
    :cond_ed
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    goto :goto_af

    .line 534
    :cond_f6
    if-eqz p2, :cond_180

    .line 535
    sub-double v16, v14, p5

    add-double v16, v16, v8

    .line 536
    :goto_fc
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_122

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v5, 0x0

    aget v2, v2, v5

    float-to-double v0, v2

    move-wide/from16 v18, v0

    cmpg-double v2, v18, v16

    if-gtz v2, :cond_122

    .line 537
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_fc

    .line 539
    :cond_122
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12f

    const/4 v2, 0x0

    :goto_12d
    move-object v5, v2

    goto :goto_b0

    :cond_12f
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    goto :goto_12d

    .line 541
    :cond_13a
    const/4 v2, 0x0

    goto :goto_bd

    .line 542
    :cond_13c
    const/4 v2, 0x0

    goto :goto_d0

    .line 543
    :cond_13e
    const/4 v2, 0x0

    goto :goto_d7

    .line 544
    :cond_140
    const/4 v2, 0x0

    goto :goto_e7

    .line 546
    :cond_142
    const/4 v2, 0x0

    move v6, v2

    :goto_144
    const/16 v2, 0xf0

    if-ge v6, v2, :cond_17c

    .line 547
    const/4 v5, 0x0

    .line 548
    const/4 v4, 0x0

    .line 549
    const/4 v3, 0x0

    .line 550
    const/4 v2, 0x0

    add-int/lit8 v8, v6, -0x2

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_152
    const/16 v8, 0xef

    add-int/lit8 v9, v6, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-gt v2, v8, :cond_167

    .line 551
    aget v8, v7, v2

    add-float/2addr v5, v8

    .line 552
    aget v8, v12, v2

    add-float/2addr v4, v8

    .line 553
    add-int/lit8 v3, v3, 0x1

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_152

    .line 555
    :cond_167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    int-to-float v8, v3

    div-float/2addr v5, v8

    aput v5, v2, v6

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    int-to-float v3, v3

    div-float v3, v4, v3

    aput v3, v2, v6

    .line 546
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_144

    .line 558
    :cond_17c
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->invalidate()V

    .line 559
    return-void

    :cond_180
    move-object v5, v2

    goto/16 :goto_b0
.end method

.method public setHrScale(II)V
    .registers 6

    .prologue
    .line 497
    if-gt p2, p1, :cond_6

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    .line 504
    :goto_5
    return-void

    .line 501
    :cond_6
    int-to-float v0, p1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    .line 502
    add-int/lit8 v0, p2, 0x8

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    .line 503
    int-to-float v0, p2

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrCapY:F

    goto :goto_5
.end method
