.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;
.super Landroid/widget/LinearLayout;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZoneBoard"
.end annotation


# instance fields
.field final at:[F

.field final colors:[I

.field fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

.field final notes:[Landroid/view/View;

.field final p:Landroid/graphics/Paint;

.field final path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 1428
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1420
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    .line 1421
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->path:Landroid/graphics/Path;

    .line 1422
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->notes:[Landroid/view/View;

    .line 1423
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->colors:[I

    .line 1424
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->at:[F

    .line 1429
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->setOrientation(I)V

    .line 1430
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->setWillNotDraw(Z)V

    .line 1431
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    .line 1460
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1461
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v0

    if-gtz v0, :cond_10

    .line 1504
    :cond_f
    return-void

    .line 1464
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->origin(Landroid/view/View;[F)[F

    move-result-object v4

    .line 1465
    const/4 v0, 0x2

    new-array v5, v0, [F

    .line 1466
    const/4 v0, 0x0

    aget v0, v4, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v6, v0, v1

    .line 1467
    const/4 v0, 0x0

    move v3, v0

    :goto_2d
    const/4 v0, 0x5

    if-ge v3, v0, :cond_f

    .line 1468
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->notes:[Landroid/view/View;

    aget-object v2, v0, v3

    .line 1469
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_46

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->at:[F

    invoke-virtual {v0, v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->anchor(I[F)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1467
    :cond_46
    :goto_46
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2d

    .line 1472
    :cond_4a
    invoke-virtual {p0, v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->origin(Landroid/view/View;[F)[F

    .line 1473
    const/4 v0, 0x0

    aget v0, v4, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->at:[F

    const/4 v7, 0x0

    aget v1, v1, v7

    add-float v7, v0, v1

    const/4 v0, 0x1

    aget v0, v4, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->at:[F

    const/4 v8, 0x1

    aget v1, v1, v8

    add-float v8, v0, v1

    .line 1474
    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    add-float/2addr v0, v1

    cmpg-float v0, v0, v6

    if-gez v0, :cond_154

    const/4 v0, 0x1

    move v1, v0

    .line 1475
    :goto_73
    if-eqz v1, :cond_158

    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v0, v9

    .line 1476
    :goto_7e
    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v2, v10

    add-float/2addr v9, v2

    .line 1477
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    .line 1478
    if-eqz v1, :cond_15d

    add-float v1, v0, v2

    .line 1479
    :goto_94
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->colors:[I

    aget v2, v2, v3

    if-eqz v2, :cond_161

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->colors:[I

    aget v2, v2, v3

    .line 1480
    :goto_9e
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->path:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 1481
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->path:Landroid/graphics/Path;

    invoke-virtual {v10, v0, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1482
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->path:Landroid/graphics/Path;

    invoke-virtual {v10, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1483
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1484
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1485
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1486
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1487
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    const v10, 0x4059999a    # 3.4f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1488
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    const/high16 v10, 0x66000000

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1489
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->path:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1490
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    const v10, 0x3fe66666    # 1.8f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1491
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    const/16 v10, 0xdc

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1492
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->path:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1493
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1494
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1495
    const v1, 0x404ccccd    # 3.2f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v1, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1497
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1498
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    add-float/2addr v0, v8

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1499
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1500
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1501
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1502
    const v0, 0x40933333    # 4.6f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_46

    .line 1474
    :cond_154
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_73

    .line 1475
    :cond_158
    const/4 v0, 0x0

    aget v0, v5, v0

    goto/16 :goto_7e

    .line 1478
    :cond_15d
    sub-float v1, v0, v2

    goto/16 :goto_94

    .line 1479
    :cond_161
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_9e
.end method

.method public figure(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;)V
    .registers 2

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    .line 1435
    return-void
.end method

.method public link(ILandroid/view/View;I)V
    .registers 5

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->notes:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 1440
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ZoneBoard;->colors:[I

    aput p3, v0, p1

    .line 1441
    return-void
.end method

.method origin(Landroid/view/View;[F)[F
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1445
    move v1, v0

    move v2, v0

    .line 1447
    :goto_3
    if-eqz p1, :cond_2b

    if-eq p1, p0, :cond_2b

    .line 1448
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 1449
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 1450
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1451
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_29

    check-cast v0, Landroid/view/View;

    :goto_27
    move-object p1, v0

    .line 1452
    goto :goto_3

    .line 1451
    :cond_29
    const/4 v0, 0x0

    goto :goto_27

    .line 1453
    :cond_2b
    const/4 v0, 0x0

    aput v2, p2, v0

    .line 1454
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 1455
    return-object p2
.end method
