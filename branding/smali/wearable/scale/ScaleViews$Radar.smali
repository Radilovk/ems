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
    .line 442
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

    .line 467
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 449
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->names()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->names:[Ljava/lang/String;

    .line 454
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->fatMid:D

    .line 455
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    .line 456
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    .line 457
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->now:[D

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    .line 461
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->grow:F

    .line 463
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ax:[F

    .line 464
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ay:[F

    .line 468
    return-void
.end method

.method static names()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 445
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0422\u043e\u0440\u0441"

    const-string v3, "Trunk"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u041b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430"

    const-string v3, "Left arm"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

    const-string v3, "Left leg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v3, "Right leg"

    .line 446
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0414\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430"

    const-string v3, "Right arm"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 445
    return-object v0
.end method


# virtual methods
.method public animateIn()V
    .registers 5

    .prologue
    .line 483
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 484
    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 485
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 486
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 487
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 488
    return-void

    .line 483
    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 24

    .prologue
    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    add-float v7, v4, v5

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3eb851ec    # 0.36f

    mul-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v8, 0x3ec28f5c    # 0.38f

    mul-float/2addr v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 500
    const/4 v4, 0x5

    new-array v9, v4, [D

    .line 501
    const/4 v4, 0x0

    :goto_35
    const/4 v5, 0x5

    if-ge v4, v5, :cond_4f

    .line 502
    const-wide v10, -0x4006de04abbbd2e8L    # -1.5707963267948966

    mul-int/lit8 v5, v4, 0x2

    int-to-double v12, v5

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v9, v4

    .line 501
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 505
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const v5, -0xdd3aa2

    const/16 v8, 0x22

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    const-wide v4, 0x405b800000000000L    # 110.0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v5, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v8

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ring(Landroid/graphics/Canvas;FFF[DZ)V

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    const-wide v4, 0x4056800000000000L    # 90.0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v5, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v8

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ring(Landroid/graphics/Canvas;FFF[DZ)V

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 512
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    move-wide v12, v4

    :goto_a7
    const-wide v4, 0x4061800000000000L    # 140.0

    cmpg-double v4, v12, v4

    if-gtz v4, :cond_fd

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    cmpl-double v4, v12, v10

    if-nez v4, :cond_f0

    const v4, 0x3fcccccd    # 1.6f

    :goto_bd
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 514
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    cmpl-double v4, v12, v10

    if-nez v4, :cond_f4

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v8, 0x82

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    :goto_d8
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v8

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ring(Landroid/graphics/Canvas;FFF[DZ)V

    .line 512
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    add-double/2addr v4, v12

    move-wide v12, v4

    goto :goto_a7

    .line 513
    :cond_f0
    const v4, 0x3f4ccccd    # 0.8f

    goto :goto_bd

    .line 514
    :cond_f4
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v8, 0x3c

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    goto :goto_d8

    .line 517
    :cond_fd
    const/4 v4, 0x0

    :goto_fe
    const/4 v5, 0x5

    if-ge v4, v5, :cond_15a

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ax:[F

    aget-wide v10, v9, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float v8, v8, v18

    add-float/2addr v8, v6

    aput v8, v5, v4

    .line 519
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ay:[F

    aget-wide v10, v9, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float v8, v8, v18

    add-float/2addr v8, v7

    aput v8, v5, v4

    .line 520
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const v8, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 521
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v10, 0x46

    invoke-static {v8, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ax:[F

    aget v13, v5, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->ay:[F

    aget v14, v5, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 517
    add-int/lit8 v4, v4, 0x1

    goto :goto_fe

    .line 525
    :cond_15a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->before:[D

    if-eqz v4, :cond_1d7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1d7

    .line 526
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->before:[D

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v4, p0

    move/from16 v8, v18

    invoke-virtual/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->poly([DFFF[DF)V

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const v5, 0x3fb33333    # 1.4f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v8, 0x78

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v10, 0x0

    const/high16 v11, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    aput v11, v8, v10

    const/4 v10, 0x1

    const/high16 v11, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    aput v11, v8, v10

    const/4 v10, 0x0

    invoke-direct {v5, v8, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 535
    :cond_1d7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    if-nez v4, :cond_282

    const v4, -0xdd3aa2

    move/from16 v17, v4

    .line 536
    :goto_1e2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->now:[D

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->grow:F

    move-object/from16 v4, p0

    move/from16 v8, v18

    invoke-virtual/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->poly([DFFF[DF)V

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    const/16 v5, 0x28

    move/from16 v0, v17

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v14

    const/16 v5, 0x78

    .line 539
    move/from16 v0, v17

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v15

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v11, v6

    move v12, v7

    move/from16 v13, v18

    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 538
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const v5, 0x4019999a    # 2.4f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 548
    const/4 v4, 0x0

    move v8, v4

    :goto_26b
    const/4 v4, 0x5

    if-ge v8, v4, :cond_462

    .line 549
    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->AXES:[I

    aget v10, v4, v8

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->now:[D

    aget-wide v20, v4, v10

    .line 551
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_297

    .line 548
    :goto_27e
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_26b

    .line 535
    :cond_282
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_290

    const v4, -0xa61f5

    move/from16 v17, v4

    goto/16 :goto_1e2

    :cond_290
    const v4, -0xc74208

    move/from16 v17, v4

    goto/16 :goto_1e2

    .line 554
    :cond_297
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->grow:F

    mul-float/2addr v4, v5

    .line 555
    aget-wide v12, v9, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v5, v12

    mul-float/2addr v5, v4

    add-float v11, v6, v5

    .line 556
    aget-wide v12, v9, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v5, v12

    mul-float/2addr v4, v5

    add-float v12, v7, v4

    .line 557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 558
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_40a

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double v4, v20, v4

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    div-double/2addr v4, v14

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->swellCol(D)I

    move-result v4

    .line 559
    :goto_2d5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v10, v5, :cond_416

    const/high16 v5, 0x41000000    # 8.0f

    :goto_2e4
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v5, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 561
    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v10, v5, :cond_32b

    .line 562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/high16 v13, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v13

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget v13, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 565
    const/high16 v5, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v5, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 567
    :cond_32b
    aget-wide v12, v9, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v5, v12

    const/high16 v11, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    add-float v11, v11, v18

    mul-float/2addr v5, v11

    add-float v13, v6, v5

    .line 568
    aget-wide v14, v9, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v5, v14

    const/high16 v11, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    add-float v11, v11, v18

    mul-float/2addr v5, v11

    add-float v17, v7, v5

    .line 569
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v10, v5, :cond_41a

    const/4 v5, 0x1

    :goto_367
    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/high16 v11, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 572
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v10, v5, :cond_41d

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_385
    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->names:[Ljava/lang/String;

    aget-object v12, v5, v8

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float v14, v17, v5

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v10, p1

    move-object/from16 v16, p0

    invoke-static/range {v10 .. v16}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 575
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/high16 v10, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 576
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_421

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    sub-double v14, v20, v14

    const-wide/high16 v20, 0x402e000000000000L    # 15.0

    div-double v14, v14, v20

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->signed(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 578
    :goto_3ed
    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float v14, v17, v4

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v10, p1

    move-object/from16 v16, p0

    .line 577
    invoke-static/range {v10 .. v16}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_27e

    .line 558
    :cond_40a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->layerCol(ID)I

    move-result v4

    goto/16 :goto_2d5

    .line 560
    :cond_416
    const/high16 v5, 0x40b00000    # 5.5f

    goto/16 :goto_2e4

    .line 570
    :cond_41a
    const/4 v5, 0x0

    goto/16 :goto_367

    .line 572
    :cond_41d
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_385

    .line 578
    :cond_421
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->fatMid:D

    mul-double v14, v14, v20

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v14, v14, v20

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3ed

    :cond_44a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3ed

    .line 581
    :cond_462
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    if-nez v0, :cond_d

    .line 619
    :cond_b
    const/4 v0, 0x1

    .line 637
    :goto_c
    return v0

    .line 621
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

    .line 622
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

    .line 623
    const/4 v4, 0x0

    .line 624
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    .line 625
    const/4 v5, 0x0

    :goto_33
    const/4 v0, 0x5

    if-ge v5, v0, :cond_77

    .line 626
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

    .line 627
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 626
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 628
    cmpg-double v8, v0, v2

    if-gez v8, :cond_8d

    move v4, v5

    .line 625
    :goto_73
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v0

    goto :goto_33

    .line 633
    :cond_77
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 634
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->performClick()Z

    .line 635
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->AXES:[I

    aget v0, v0, v4

    .line 636
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    if-ne v0, v2, :cond_88

    const/4 v0, -0x1

    :cond_88
    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;->onSegment(I)V

    .line 637
    const/4 v0, 0x1

    goto :goto_c

    :cond_8d
    move-wide v0, v2

    goto :goto_73
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 642
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method poly([DFFF[DF)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 599
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 600
    const/4 v3, 0x1

    move v4, v2

    .line 601
    :goto_8
    const/4 v0, 0x5

    if-ge v4, v0, :cond_44

    .line 602
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->AXES:[I

    aget v0, v0, v4

    aget-wide v0, p1, v0

    .line 603
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_19

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :cond_19
    invoke-virtual {p0, v0, v1, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->rOf(DF)F

    move-result v0

    mul-float/2addr v0, p6

    .line 604
    aget-wide v6, p5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 605
    aget-wide v6, p5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v0, v5

    add-float/2addr v0, p3

    .line 606
    if-eqz v3, :cond_3d

    .line 607
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v2

    .line 601
    :goto_38
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v3, v0

    goto :goto_8

    .line 610
    :cond_3d
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move v0, v3

    goto :goto_38

    .line 613
    :cond_44
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 614
    return-void
.end method

.method rOf(DF)F
    .registers 9

    .prologue
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    .line 491
    const-wide v0, 0x4062c00000000000L    # 150.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 492
    float-to-double v2, p3

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method ring(Landroid/graphics/Canvas;FFF[DZ)V
    .registers 11

    .prologue
    .line 584
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 585
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2b

    .line 586
    aget-wide v2, p5, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v1, p2

    .line 587
    aget-wide v2, p5, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    .line 588
    if-nez v0, :cond_25

    .line 589
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 585
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 591
    :cond_25
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_22

    .line 594
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 595
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 596
    return-void
.end method

.method public set(I[D[DI)V
    .registers 6

    .prologue
    .line 475
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->layer:I

    .line 476
    if-eqz p2, :cond_e

    :goto_4
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->now:[D

    .line 477
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->before:[D

    .line 478
    iput p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->selected:I

    .line 479
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->invalidate()V

    .line 480
    return-void

    .line 476
    :cond_e
    const/4 v0, 0x5

    new-array p2, v0, [D

    goto :goto_4
.end method

.method public setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V
    .registers 2

    .prologue
    .line 471
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    .line 472
    return-void
.end method
