.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Radar"
.end annotation


# static fields
.field static final AXES:[I

.field static final MAX:D = 150.0

.field static final MIN:D = 50.0

.field public static final READY_K:D = 15.0


# instance fields
.field final ax:[F

.field final ay:[F

.field before:[D

.field public fatMid:D

.field grow:F

.field layer:I

.field final names:[Ljava/lang/String;

.field now:[D

.field onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

.field final p:Landroid/graphics/Paint;

.field final path:Landroid/graphics/Path;

.field selected:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 416
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->AXES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x1
        0x3
        0x4
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x5

    .line 441
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->names()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->names:[Ljava/lang/String;

    .line 428
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->fatMid:D

    .line 429
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    .line 430
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    .line 431
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->now:[D

    .line 434
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    .line 435
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->grow:F

    .line 437
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ax:[F

    .line 438
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ay:[F

    .line 442
    return-void
.end method

.method static names()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 419
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0422\u043e\u0440\u0441"

    const-string v3, "Trunk"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u041b. \u0440\u044a\u043a\u0430"

    const-string v3, "L arm"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u041b. \u043a\u0440\u0430\u043a"

    const-string v3, "L leg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0414. \u043a\u0440\u0430\u043a"

    const-string v3, "R leg"

    .line 420
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0414. \u0440\u044a\u043a\u0430"

    const-string v3, "R arm"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 419
    return-object v0
.end method


# virtual methods
.method public animateIn()V
    .registers 5

    .prologue
    .line 457
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 458
    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 459
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 460
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 462
    return-void

    .line 457
    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .prologue
    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    add-float v5, v2, v3

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eb851ec    # 0.36f

    mul-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3ec28f5c    # 0.38f

    mul-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 474
    const/4 v2, 0x5

    new-array v7, v2, [D

    .line 475
    const/4 v2, 0x0

    :goto_35
    const/4 v3, 0x5

    if-ge v2, v3, :cond_4f

    .line 476
    const-wide v8, -0x4006de04abbbd2e8L    # -1.5707963267948966

    mul-int/lit8 v3, v2, 0x2

    int-to-double v10, v3

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v7, v2

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 479
    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const v3, -0xdd3aa2

    const/16 v6, 0x22

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    const-wide v2, 0x405b800000000000L    # 110.0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ring(Landroid/graphics/Canvas;FFF[DZ)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    const-wide v2, 0x4056800000000000L    # 90.0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ring(Landroid/graphics/Canvas;FFF[DZ)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 486
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    move-wide v10, v2

    :goto_a7
    const-wide v2, 0x4061800000000000L    # 140.0

    cmpg-double v2, v10, v2

    if-gtz v2, :cond_fd

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpl-double v2, v10, v8

    if-nez v2, :cond_f0

    const v2, 0x3fcccccd    # 1.6f

    :goto_bd
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpl-double v2, v10, v8

    if-nez v2, :cond_f4

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x82

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    :goto_d8
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v11, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ring(Landroid/graphics/Canvas;FFF[DZ)V

    .line 486
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    add-double/2addr v2, v10

    move-wide v10, v2

    goto :goto_a7

    .line 487
    :cond_f0
    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_bd

    .line 488
    :cond_f4
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v6, 0x3c

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto :goto_d8

    .line 491
    :cond_fd
    const/4 v2, 0x0

    :goto_fe
    const/4 v3, 0x5

    if-ge v2, v3, :cond_15a

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ax:[F

    aget-wide v8, v7, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float v6, v6, v16

    add-float/2addr v6, v4

    aput v6, v3, v2

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ay:[F

    aget-wide v8, v7, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float v6, v6, v16

    add-float/2addr v6, v5

    aput v6, v3, v2

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const v6, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v8, 0x46

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ax:[F

    aget v11, v3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ay:[F

    aget v12, v3, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v4

    move v10, v5

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    .line 499
    :cond_15a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->before:[D

    if-eqz v2, :cond_1d7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d7

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->before:[D

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->poly([DFFF[DF)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const v3, 0x3fb33333    # 1.4f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x78

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x0

    invoke-direct {v3, v6, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 509
    :cond_1d7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    if-nez v2, :cond_27b

    const v2, -0xdd3aa2

    move v15, v2

    .line 510
    :goto_1e1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->now:[D

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->grow:F

    move-object/from16 v2, p0

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->poly([DFFF[DF)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    const/16 v3, 0x28

    invoke-static {v15, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v12

    const/16 v3, 0x78

    .line 513
    invoke-static {v15, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v13

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v9, v4

    move v10, v5

    move/from16 v11, v16

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 512
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const v3, 0x4019999a    # 2.4f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 522
    const/4 v2, 0x0

    move v6, v2

    :goto_264
    const/4 v2, 0x5

    if-ge v6, v2, :cond_448

    .line 523
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->AXES:[I

    aget v8, v2, v6

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->now:[D

    aget-wide v10, v2, v8

    .line 525
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_28e

    .line 522
    :goto_277
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_264

    .line 509
    :cond_27b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_288

    const v2, -0xa61f5

    move v15, v2

    goto/16 :goto_1e1

    :cond_288
    const v2, -0xc74208

    move v15, v2

    goto/16 :goto_1e1

    .line 528
    :cond_28e
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v11, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->grow:F

    mul-float/2addr v2, v3

    .line 529
    aget-wide v12, v7, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v3, v12

    mul-float/2addr v3, v2

    add-float v9, v4, v3

    .line 530
    aget-wide v12, v7, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v3, v12

    mul-float/2addr v2, v3

    add-float v12, v5, v2

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 532
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3f4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sub-double v2, v10, v2

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    div-double/2addr v2, v14

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->swellCol(D)I

    move-result v2

    .line 533
    :goto_2ca
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 534
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v8, v3, :cond_3fe

    const/high16 v3, 0x41000000    # 8.0f

    :goto_2d9
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12, v3, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 535
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v8, v3, :cond_320

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/high16 v13, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v13

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget v13, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    const/high16 v3, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12, v3, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 541
    :cond_320
    aget-wide v12, v7, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v3, v12

    const/high16 v9, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    add-float v9, v9, v16

    mul-float/2addr v3, v9

    add-float v9, v4, v3

    .line 542
    aget-wide v12, v7, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v3, v12

    const/high16 v12, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v12

    add-float v12, v12, v16

    mul-float/2addr v3, v12

    add-float v12, v5, v3

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v8, v3, :cond_402

    const/4 v3, 0x1

    :goto_35c
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/high16 v13, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v13

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 546
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v8, v3, :cond_405

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_37a
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->names:[Ljava/lang/String;

    aget-object v3, v3, v6

    const/high16 v8, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    sub-float v8, v12, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/high16 v8, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_409

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    sub-double/2addr v10, v14

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->signed(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    :goto_3d8
    const/high16 v3, 0x41600000    # 14.0f

    .line 553
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    add-float/2addr v3, v12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    .line 551
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_277

    .line 532
    :cond_3f4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    invoke-static {v2, v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->layerCol(ID)I

    move-result v2

    goto/16 :goto_2ca

    .line 534
    :cond_3fe
    const/high16 v3, 0x40b00000    # 5.5f

    goto/16 :goto_2d9

    .line 544
    :cond_402
    const/4 v3, 0x0

    goto/16 :goto_35c

    .line 546
    :cond_405
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_37a

    .line 552
    :cond_409
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_430

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->fatMid:D

    mul-double/2addr v10, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d8

    :cond_430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d8

    .line 556
    :cond_448
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    .prologue
    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    if-nez v0, :cond_d

    .line 594
    :cond_b
    const/4 v0, 0x1

    .line 612
    :goto_c
    return v0

    .line 596
    :cond_d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v1, v2, v1

    float-to-double v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 598
    const/4 v4, 0x0

    .line 599
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    .line 600
    const/4 v5, 0x0

    :goto_33
    const/4 v0, 0x5

    if-ge v5, v0, :cond_77

    .line 601
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    mul-int/lit8 v8, v5, 0x2

    int-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    div-double/2addr v8, v10

    add-double/2addr v0, v8

    sub-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v8, -0x4006de04abbbd2e8L    # -1.5707963267948966

    mul-int/lit8 v10, v5, 0x2

    int-to-double v10, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    sub-double v8, v6, v8

    .line 602
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 601
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 603
    cmpg-double v8, v0, v2

    if-gez v8, :cond_8d

    move v4, v5

    .line 600
    :goto_73
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v0

    goto :goto_33

    .line 608
    :cond_77
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 609
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->performClick()Z

    .line 610
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->AXES:[I

    aget v0, v0, v4

    .line 611
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v0, v2, :cond_88

    const/4 v0, -0x1

    :cond_88
    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;->onSegment(I)V

    .line 612
    const/4 v0, 0x1

    goto :goto_c

    :cond_8d
    move-wide v0, v2

    goto :goto_73
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 617
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method poly([DFFF[DF)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 575
    const/4 v3, 0x1

    move v4, v2

    .line 576
    :goto_8
    const/4 v0, 0x5

    if-ge v4, v0, :cond_44

    .line 577
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->AXES:[I

    aget v0, v0, v4

    aget-wide v0, p1, v0

    .line 578
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_19

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :cond_19
    invoke-virtual {p0, v0, v1, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v0

    mul-float/2addr v0, p6

    .line 579
    aget-wide v6, p5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 580
    aget-wide v6, p5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v0, v5

    add-float/2addr v0, p3

    .line 581
    if-eqz v3, :cond_3d

    .line 582
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v2

    .line 576
    :goto_38
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v3, v0

    goto :goto_8

    .line 585
    :cond_3d
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move v0, v3

    goto :goto_38

    .line 588
    :cond_44
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 589
    return-void
.end method

.method rOf(DF)F
    .registers 9

    .prologue
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    .line 465
    const-wide v0, 0x4062c00000000000L    # 150.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 466
    float-to-double v2, p3

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method ring(Landroid/graphics/Canvas;FFF[DZ)V
    .registers 11

    .prologue
    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 560
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2b

    .line 561
    aget-wide v2, p5, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v1, p2

    .line 562
    aget-wide v2, p5, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    .line 563
    if-nez v0, :cond_25

    .line 564
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 560
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 566
    :cond_25
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_22

    .line 569
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 571
    return-void
.end method

.method public set(I[D[DI)V
    .registers 6

    .prologue
    .line 449
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    .line 450
    if-eqz p2, :cond_e

    :goto_4
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->now:[D

    .line 451
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->before:[D

    .line 452
    iput p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    .line 453
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->invalidate()V

    .line 454
    return-void

    .line 450
    :cond_e
    const/4 v0, 0x5

    new-array p2, v0, [D

    goto :goto_4
.end method

.method public setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V
    .registers 2

    .prologue
    .line 445
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    .line 446
    return-void
.end method
