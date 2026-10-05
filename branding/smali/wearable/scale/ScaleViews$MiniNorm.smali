.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiniNorm"
.end annotation


# instance fields
.field grow:F

.field n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

.field final p:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1492
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1486
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->p:Landroid/graphics/Paint;

    .line 1487
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->r:Landroid/graphics/RectF;

    .line 1489
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->grow:F

    .line 1493
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    if-nez v0, :cond_5

    .line 1528
    :cond_4
    :goto_4
    return-void

    .line 1509
    :cond_5
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float v3, v0, v1

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    .line 1510
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v6

    .line 1511
    const/4 v0, 0x0

    move v1, v0

    :goto_2d
    const/4 v0, 0x5

    if-ge v1, v0, :cond_80

    .line 1512
    int-to-float v0, v1

    mul-float/2addr v0, v3

    const/high16 v7, 0x40a00000    # 5.0f

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    add-float/2addr v0, v7

    add-int/lit8 v7, v1, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v7, v8

    add-float/2addr v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    sub-float/2addr v7, v8

    .line 1513
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->r:Landroid/graphics/RectF;

    add-float v9, v5, v4

    invoke-virtual {v8, v0, v5, v7, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1514
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->p:Landroid/graphics/Paint;

    if-ne v1, v6, :cond_73

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v0, v0, v1

    :goto_5d
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1515
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->r:Landroid/graphics/RectF;

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v4, v8

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1511
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    .line 1514
    :cond_73
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v0, v0, v1

    const/16 v8, 0x46

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_5d

    .line 1517
    :cond_80
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    if-ltz v6, :cond_4

    .line 1520
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    .line 1521
    const/4 v1, 0x0

    aget-wide v8, v0, v1

    const/4 v1, 0x5

    aget-wide v10, v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-wide v12, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 1522
    aget-wide v10, v0, v6

    sub-double/2addr v8, v10

    const-wide v10, 0x3e112e0be826d695L    # 1.0E-9

    add-int/lit8 v1, v6, 0x1

    aget-wide v12, v0, v1

    aget-wide v0, v0, v6

    sub-double v0, v12, v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double v0, v8, v0

    .line 1523
    int-to-double v8, v6

    add-double/2addr v0, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v8

    float-to-double v8, v3

    mul-double/2addr v0, v8

    double-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->grow:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 1524
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->p:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1525
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    add-float/2addr v1, v5

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1526
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1527
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    add-float/2addr v1, v5

    const v2, 0x404ccccd    # 3.2f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method public set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V
    .registers 6

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    .line 1497
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1498
    const-wide/16 v2, 0x208

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1499
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1500
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1501
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1502
    return-void

    .line 1497
    :array_28
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
