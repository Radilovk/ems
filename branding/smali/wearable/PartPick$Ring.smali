.class final Lcom/isaigu/gymapp/wearable/PartPick$Ring;
.super Landroid/graphics/drawable/Drawable;
.source "PartPick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PartPick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ring"
.end annotation


# instance fields
.field final arc:Landroid/graphics/Paint;

.field cx:F

.field cy:F

.field final d:F

.field flash:F

.field final glow:Landroid/graphics/Paint;

.field final head:Landroid/graphics/Paint;

.field final oval:Landroid/graphics/RectF;

.field progress:F

.field r:F

.field spin:F


# direct methods
.method constructor <init>(F)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 475
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 469
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    .line 470
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->arc:Landroid/graphics/Paint;

    .line 471
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->head:Landroid/graphics/Paint;

    .line 472
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->oval:Landroid/graphics/RectF;

    .line 476
    iput p1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->d:F

    .line 477
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 479
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 480
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 481
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->head:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 482
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v9, 0x437f0000    # 255.0f

    const/4 v8, 0x0

    .line 485
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->r:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_10

    .line 522
    :cond_f
    :goto_f
    return-void

    .line 488
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cx:F

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->r:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cy:F

    iget v5, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->r:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cx:F

    iget v6, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->r:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cy:F

    iget v7, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->r:F

    add-float/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 489
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_140

    .line 490
    :goto_2f
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_145

    .line 491
    :goto_35
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_14a

    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v6, v0

    .line 493
    :goto_43
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->d:F

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 495
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    const v1, 0x33ffc107

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    mul-int/lit8 v1, v6, 0x33

    int-to-float v1, v1

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 497
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cx:F

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cy:F

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->r:F

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 498
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    const/high16 v4, 0x40e00000    # 7.0f

    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_14f

    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    :goto_7f
    mul-float/2addr v0, v10

    add-float/2addr v0, v4

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->d:F

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 499
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_153

    const v0, -0x994496

    :goto_92
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_157

    const/16 v0, 0x80

    :goto_9f
    mul-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 501
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->oval:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->glow:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 503
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cx:F

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cy:F

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_15c

    const/4 v7, 0x5

    new-array v7, v7, [F

    fill-array-data v7, :array_16a

    invoke-direct {v0, v1, v4, v5, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 506
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 507
    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cx:F

    iget v5, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cy:F

    invoke-virtual {v1, v2, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 508
    invoke-virtual {v0, v1}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 509
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 510
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->arc:Landroid/graphics/Paint;

    const/high16 v1, 0x40600000    # 3.5f

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->d:F

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 511
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 512
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->oval:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->arc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 513
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->progress:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_f

    .line 514
    add-float v0, v2, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 515
    iget v2, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cx:F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->r:F

    float-to-double v4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    add-float/2addr v2, v3

    .line 516
    iget v3, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cy:F

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->r:F

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    add-float/2addr v0, v3

    .line 517
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->head:Landroid/graphics/Paint;

    const v3, 0x66ffffff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 518
    iget v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->d:F

    mul-float/2addr v1, v10

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->head:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 519
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->head:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    const/high16 v1, 0x40400000    # 3.0f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->d:F

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->head:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    .line 489
    :cond_140
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->progress:F

    mul-float/2addr v3, v0

    goto/16 :goto_2f

    .line 490
    :cond_145
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->spin:F

    add-float/2addr v2, v0

    goto/16 :goto_35

    .line 491
    :cond_14a
    const/16 v0, 0xff

    move v6, v0

    goto/16 :goto_43

    .line 498
    :cond_14f
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->progress:F

    goto/16 :goto_7f

    .line 499
    :cond_153
    const/16 v0, -0x3ef9

    goto/16 :goto_92

    .line 500
    :cond_157
    const/16 v0, 0x50

    goto/16 :goto_9f

    .line 503
    nop

    :array_15c
    .array-data 4
        -0x3ef9
        -0x2ab1
        -0x63339b
        -0xbc5fb9
        -0x3ef9
    .end array-data

    :array_16a
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f19999a    # 0.6f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 531
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 525
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 528
    return-void
.end method
