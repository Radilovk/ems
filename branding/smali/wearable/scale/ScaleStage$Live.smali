.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;
.super Landroid/view/View;
.source "ScaleStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Live"
.end annotation


# instance fields
.field done:Z

.field final kg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final line:Landroid/graphics/Path;

.field final p:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;

.field ring:F

.field ringText:Ljava/lang/String;

.field final st:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 659
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 649
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    .line 650
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->line:Landroid/graphics/Path;

    .line 651
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->r:Landroid/graphics/RectF;

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->kg:Ljava/util/List;

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->st:Ljava/util/List;

    .line 655
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ringText:Ljava/lang/String;

    .line 660
    return-void
.end method


# virtual methods
.method add(DZ)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 667
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->done:Z

    if-eqz v0, :cond_8

    .line 668
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->clear()V

    .line 670
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->kg:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->st:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :goto_1a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->kg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_2f

    .line 673
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->kg:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 674
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->st:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    .line 676
    :cond_2f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->invalidate()V

    .line 677
    return-void
.end method

.method clear()V
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->kg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 686
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->st:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->done:Z

    .line 688
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->invalidate()V

    .line 689
    return-void
.end method

.method d(F)F
    .registers 3

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method done()V
    .registers 2

    .prologue
    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->done:Z

    .line 681
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->invalidate()V

    .line 682
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 24

    .prologue
    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->getHeight()I

    move-result v2

    int-to-float v8, v2

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->getWidth()I

    move-result v2

    int-to-float v9, v2

    .line 700
    const/high16 v2, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v2

    sub-float v2, v8, v2

    const/high16 v3, 0x42f00000    # 120.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 701
    sub-float v2, v9, v10

    const/high16 v3, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v3

    sub-float v11, v2, v3

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->kg:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->r:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v5

    sub-float v5, v8, v5

    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->r:Landroid/graphics/RectF;

    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 708
    const/4 v2, 0x2

    if-lt v12, v2, :cond_333

    .line 709
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v2, -0x10000000000001L

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->kg:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-wide v4, v2

    :goto_99
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 711
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 712
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v4, v2

    .line 713
    goto :goto_99

    .line 714
    :cond_b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->kg:Ljava/util/List;

    add-int/lit8 v3, v12, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 715
    const-wide v2, 0x3fe3333333333333L    # 0.6

    sub-double/2addr v4, v14

    sub-double v6, v14, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide v6, 0x400199999999999aL    # 2.2

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 716
    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v6

    const/high16 v2, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v2

    sub-float v7, v8, v2

    .line 718
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v7, v2

    add-float/2addr v2, v6

    float-to-double v2, v2

    const-wide v16, 0x3fb999999999999aL    # 0.1

    div-double v16, v16, v4

    float-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v2, v2, v16

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v7, v3

    add-float/2addr v3, v6

    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3fb999999999999aL    # 0.1

    div-double v18, v18, v4

    float-to-double v0, v7

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 719
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    const v16, -0xdd3aa2

    const/16 v17, 0x28

    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->r:Landroid/graphics/RectF;

    const/high16 v16, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v16

    const/high16 v17, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v17

    sub-float v17, v11, v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->r:Landroid/graphics/RectF;

    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v3

    const/high16 v13, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v13, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->line:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 723
    const/4 v2, 0x0

    move v3, v2

    :goto_176
    if-ge v3, v12, :cond_1d5

    .line 724
    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v2

    const/high16 v13, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v13

    sub-float v13, v11, v13

    int-to-float v0, v3

    move/from16 v16, v0

    mul-float v13, v13, v16

    const/high16 v16, 0x426c0000    # 59.0f

    div-float v13, v13, v16

    add-float/2addr v13, v2

    .line 725
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v7, v2

    add-float/2addr v2, v6

    float-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->kg:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    sub-double v18, v18, v14

    div-double v18, v18, v4

    float-to-double v0, v7

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 726
    if-nez v3, :cond_1c9

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->line:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 723
    :goto_1c5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_176

    .line 729
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->line:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1c5

    .line 732
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->st:Ljava/util/List;

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_32e

    const v2, -0xdd3aa2

    :goto_20f
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->line:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 744
    :goto_21f
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    sub-float v2, v9, v2

    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v3

    sub-float v9, v2, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v8, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    const/high16 v3, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 750
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ring:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2b0

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    const v4, -0xdd3aa2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->r:Landroid/graphics/RectF;

    sub-float v4, v9, v2

    sub-float v5, v8, v2

    add-float v6, v9, v2

    add-float/2addr v2, v8

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->r:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ring:F

    mul-float/2addr v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 755
    :cond_2b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ringText:Ljava/lang/String;

    const-string v4, "\u2713"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_378

    const/high16 v2, 0x42080000    # 34.0f

    :goto_2dc
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ring:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_37c

    const v2, -0xdd3aa2

    :goto_2f6
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ringText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_380

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ringText:Ljava/lang/String;

    :goto_307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ringText:Ljava/lang/String;

    const-string v4, "\u2713"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_383

    const/high16 v3, 0x41400000    # 12.0f

    :goto_315
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v3

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 762
    return-void

    .line 735
    :cond_32e
    const v2, -0xa61f5

    goto/16 :goto_20f

    .line 738
    :cond_333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 741
    const-string v2, "\u0442\u0443\u043a \u0441\u0435 \u0432\u0438\u0436\u0434\u0430 \u043a\u0430\u043a \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0441\u0435 \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430"

    const-string v3, "here the weight settles"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v11, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v8, v4

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->d(F)F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_21f

    .line 758
    :cond_378
    const/high16 v2, 0x41b00000    # 22.0f

    goto/16 :goto_2dc

    .line 759
    :cond_37c
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_2f6

    .line 760
    :cond_380
    const-string v2, "BIA"

    goto :goto_307

    :cond_383
    const/high16 v3, 0x41000000    # 8.0f

    goto :goto_315
.end method

.method ring(FLjava/lang/String;)V
    .registers 3

    .prologue
    .line 692
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ring:F

    .line 693
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ringText:Ljava/lang/String;

    .line 694
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->invalidate()V

    .line 695
    return-void
.end method
