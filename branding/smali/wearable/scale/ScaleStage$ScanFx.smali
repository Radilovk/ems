.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;
.super Landroid/view/View;
.source "ScaleStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScanFx"
.end annotation


# static fields
.field static final DONE:I = 0x3

.field static final IDLE:I = 0x1

.field static final OFF:I = 0x0

.field static final SCAN:I = 0x2


# instance fields
.field final accent:I

.field mode:I

.field final p:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;

.field rt:J

.field rx:F

.field ry:F

.field since:J


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 439
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 430
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    .line 431
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->r:Landroid/graphics/RectF;

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->mode:I

    .line 440
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->accent:I

    .line 441
    return-void
.end method


# virtual methods
.method d(F)F
    .registers 3

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method mode(I)V
    .registers 4

    .prologue
    .line 477
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->mode:I

    if-eq p1, v0, :cond_f

    .line 478
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->mode:I

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->since:J

    .line 480
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->invalidate()V

    .line 482
    :cond_f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 487
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->ripple(Landroid/graphics/Canvas;)V

    .line 488
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->mode:I

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-lez v0, :cond_1b

    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_1c

    .line 550
    :cond_1b
    :goto_1b
    return-void

    .line 491
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->now()F

    move-result v2

    .line 492
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 493
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 494
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e5

    .line 496
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    float-to-double v6, v2

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x3ff3333333333333L    # 1.2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 497
    const/high16 v1, 0x42380000    # 46.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v1

    sub-float v1, v4, v1

    const v2, 0x3e851eb8    # 0.26f

    mul-float/2addr v2, v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v4

    .line 498
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->accent:I

    const/high16 v7, 0x42200000    # 40.0f

    const/high16 v8, 0x428c0000    # 70.0f

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 499
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->r:Landroid/graphics/RectF;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v3, v6

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3da3d70a    # 0.08f

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    sub-float v7, v1, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v3, v8

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3da3d70a    # 0.08f

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    add-float v9, v1, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 500
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 501
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 502
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 503
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->accent:I

    const/high16 v7, 0x43200000    # 160.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 504
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    .line 505
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->r:Landroid/graphics/RectF;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v3, v6

    mul-float v7, v2, v0

    sub-float/2addr v6, v7

    mul-float v7, v4, v0

    sub-float v7, v1, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-virtual {v5, v6, v7, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 506
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 507
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->postInvalidateOnAnimation()V

    goto/16 :goto_1b

    .line 510
    :cond_e5
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16e

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->since:J

    sub-long/2addr v0, v6

    long-to-float v0, v0

    const/high16 v1, 0x44610000    # 900.0f

    div-float/2addr v0, v1

    .line 512
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_11a

    .line 513
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const v2, -0xdd3aa2

    const/high16 v5, 0x42dc0000    # 110.0f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v0, v6, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 515
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->postInvalidateOnAnimation()V

    .line 517
    :cond_11a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 519
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const v1, -0xdd3aa2

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 521
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1b

    .line 525
    :cond_16e
    const/high16 v0, 0x42100000    # 36.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v0

    sub-float v11, v4, v0

    .line 526
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->accent:I

    const/16 v6, 0x16

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    move v7, v1

    .line 527
    :goto_18a
    cmpg-float v0, v7, v11

    if-gez v0, :cond_1a6

    .line 528
    const/4 v6, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v0

    add-float v9, v7, v0

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 527
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v0

    add-float/2addr v7, v0

    goto :goto_18a

    .line 530
    :cond_1a6
    const v0, 0x4019999a    # 2.4f

    rem-float v0, v2, v0

    const v5, 0x4019999a    # 2.4f

    div-float v5, v0, v5

    .line 531
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_2a8

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    .line 532
    :goto_1b9
    mul-float v6, v0, v0

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v8

    sub-float v0, v7, v0

    mul-float/2addr v0, v6

    .line 533
    sub-float v6, v11, v1

    mul-float/2addr v0, v6

    add-float/2addr v1, v0

    .line 534
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_2b0

    const/4 v0, 0x1

    .line 535
    :goto_1ce
    const/high16 v5, 0x428c0000    # 70.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v5

    .line 536
    if-eqz v0, :cond_2b3

    sub-float v7, v1, v5

    :goto_1d8
    if-eqz v0, :cond_2b6

    move v9, v1

    .line 537
    :goto_1db
    iget-object v13, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_2ba

    const/4 v10, 0x0

    .line 538
    :goto_1e4
    if-eqz v0, :cond_2c5

    const v0, -0xdd3aa2

    const/16 v11, 0x78

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v11

    :goto_1ef
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 537
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 539
    const/4 v6, 0x0

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 540
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 541
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const v5, -0x460440

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v6

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v0

    sub-float v7, v1, v0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v0

    sub-float v8, v3, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v0

    add-float v9, v1, v0

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 543
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    float-to-double v6, v2

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide v8, 0x3ff999999999999aL    # 1.6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 544
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 545
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 546
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const v2, -0xdd3aa2

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 547
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 548
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 549
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->postInvalidateOnAnimation()V

    goto/16 :goto_1b

    .line 531
    :cond_2a8
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v5

    sub-float/2addr v0, v6

    goto/16 :goto_1b9

    .line 534
    :cond_2b0
    const/4 v0, 0x0

    goto/16 :goto_1ce

    :cond_2b3
    move v7, v1

    .line 536
    goto/16 :goto_1d8

    :cond_2b6
    add-float v9, v1, v5

    goto/16 :goto_1db

    .line 537
    :cond_2ba
    const v10, -0xdd3aa2

    const/16 v11, 0x78

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v10

    goto/16 :goto_1e4

    .line 538
    :cond_2c5
    const/4 v11, 0x0

    goto/16 :goto_1ef
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_20

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->rx:F

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->ry:F

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->rt:J

    .line 453
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 454
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->invalidate()V

    .line 455
    const/4 v0, 0x1

    .line 457
    :goto_1f
    return v0

    :cond_20
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1f
.end method

.method ripple(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->rt:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x44610000    # 900.0f

    div-float/2addr v0, v1

    .line 463
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->rt:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1b

    cmpl-float v1, v0, v6

    if-ltz v1, :cond_1c

    .line 474
    :cond_1b
    :goto_1b
    return-void

    .line 466
    :cond_1c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 467
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 468
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 469
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->accent:I

    const/high16 v3, 0x43480000    # 200.0f

    sub-float v4, v6, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->rx:F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->ry:F

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 471
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    const/4 v2, -0x1

    sub-float v3, v6, v0

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->rx:F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->ry:F

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v3

    const/high16 v4, 0x425c0000    # 55.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->d(F)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 473
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->postInvalidateOnAnimation()V

    goto :goto_1b
.end method
