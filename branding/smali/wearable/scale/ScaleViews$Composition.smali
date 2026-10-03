.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composition"
.end annotation


# static fields
.field static final COL:[I

.field public static final FAT:I = 0x0

.field public static final MINERAL:I = 0x3

.field public static final PROTEIN:I = 0x2

.field public static final WATER:I = 0x1


# instance fields
.field grow:F

.field final kg:[D

.field l:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

.field final p:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;

.field sel:I

.field final x0:[F

.field final x1:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1420
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    return-void

    nop

    :array_a
    .array-data 4
        -0xa61f5
        -0xc74208
        -0xdd3aa2
        -0x587406
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 1430
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    .line 1422
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    .line 1423
    new-array v0, v1, [D

    fill-array-data v0, :array_2e

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    .line 1424
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x0:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x1:[F

    .line 1425
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    .line 1426
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->grow:F

    .line 1431
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->setClickable(Z)V

    .line 1432
    return-void

    .line 1423
    nop

    :array_2e
    .array-data 8
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 1462
    const-wide/16 v2, 0x0

    .line 1463
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    array-length v6, v1

    const/4 v0, 0x0

    move-wide v4, v2

    :goto_7
    if-ge v0, v6, :cond_17

    aget-wide v2, v1, v0

    .line 1464
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1513
    :cond_11
    return-void

    .line 1467
    :cond_12
    add-double/2addr v2, v4

    .line 1463
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v2

    goto :goto_7

    .line 1469
    :cond_17
    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "\u0412\u043e\u0434\u0430"

    const-string v2, "Water"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const-string v1, "\u0411\u0435\u043b\u0442\u044a\u043a"

    const-string v2, "Protein"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    const-string v1, "\u041c\u0438\u043d\u0435\u0440\u0430\u043b\u0438"

    const-string v2, "Minerals"

    .line 1470
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1471
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->grow:F

    mul-float v7, v0, v1

    const/high16 v0, 0x42080000    # 34.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    .line 1473
    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_68
    const/4 v0, 0x4

    if-ge v1, v0, :cond_120

    .line 1474
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aget-wide v10, v0, v1

    div-double/2addr v10, v4

    float-to-double v12, v7

    mul-double/2addr v10, v12

    double-to-float v10, v10

    .line 1475
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x0:[F

    aput v2, v0, v1

    .line 1476
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x1:[F

    add-float v11, v2, v10

    aput v11, v0, v1

    .line 1477
    iget-object v11, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    if-nez v1, :cond_105

    const/4 v0, 0x0

    :goto_82
    add-float v12, v2, v0

    add-float v13, v2, v10

    const/4 v0, 0x3

    if-ne v1, v0, :cond_10d

    const/4 v0, 0x0

    :goto_8a
    sub-float v0, v13, v0

    add-float v13, v9, v8

    invoke-virtual {v11, v12, v9, v0, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1478
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1479
    iget-object v11, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ltz v0, :cond_a2

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ne v0, v1, :cond_115

    :cond_a2
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v0, v0, v1

    :goto_a6
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1480
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    const/high16 v11, 0x41100000    # 9.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    const/high16 v12, 0x41100000    # 9.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v12

    iget-object v13, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1481
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ne v0, v1, :cond_ff

    .line 1482
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1483
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/high16 v11, 0x40200000    # 2.5f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1484
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1485
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    neg-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v12

    neg-float v12, v12

    invoke-virtual {v0, v11, v12}, Landroid/graphics/RectF;->inset(FF)V

    .line 1486
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    const/high16 v11, 0x41300000    # 11.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    const/high16 v12, 0x41300000    # 11.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v12

    iget-object v13, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1488
    :cond_ff
    add-float/2addr v2, v10

    .line 1473
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_68

    .line 1477
    :cond_105
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    goto/16 :goto_82

    :cond_10d
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    goto/16 :goto_8a

    .line 1479
    :cond_115
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v0, v0, v1

    const/16 v12, 0x5a

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_a6

    .line 1490
    :cond_120
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->grow:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_11

    .line 1494
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float v7, v0, v1

    add-float v0, v9, v8

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    add-float v8, v0, v1

    .line 1495
    const/4 v0, 0x0

    move v2, v0

    :goto_141
    const/4 v0, 0x4

    if-ge v2, v0, :cond_11

    .line 1496
    int-to-float v0, v2

    mul-float/2addr v0, v7

    add-float v9, v3, v0

    .line 1497
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ltz v0, :cond_150

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ne v0, v2, :cond_23f

    :cond_150
    const/4 v0, 0x1

    .line 1498
    :goto_151
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1499
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v10, v10, v2

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1500
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    add-float/2addr v1, v9

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    sub-float v10, v8, v10

    const/high16 v11, 0x40900000    # 4.5f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    iget-object v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1501
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1502
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1503
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1504
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_242

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_199
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aget-wide v10, v10, v2

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " \u043a\u0433"

    const-string v11, " kg"

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    add-float/2addr v10, v9

    iget-object v11, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1506
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1507
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1508
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_246

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v0, v0, v2

    :goto_1e9
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1509
    aget-object v0, v6, v2

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    add-float/2addr v1, v9

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    add-float/2addr v10, v8

    iget-object v11, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1510
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aget-wide v10, v1, v2

    div-double/2addr v10, v4

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    add-float/2addr v1, v9

    const/high16 v9, 0x41f80000    # 31.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    add-float/2addr v9, v8

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1495
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_141

    .line 1497
    :cond_23f
    const/4 v0, 0x0

    goto/16 :goto_151

    .line 1504
    :cond_242
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_199

    .line 1508
    :cond_246
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v0, v0, v2

    const/16 v10, 0x96

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_1e9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .prologue
    const/high16 v10, 0x42400000    # 48.0f

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 1517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 1540
    :cond_b
    :goto_b
    return v9

    .line 1520
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->l:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    if-eqz v0, :cond_b

    .line 1521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move v1, v3

    move v0, v3

    .line 1523
    :goto_1c
    const/4 v5, 0x4

    if-ge v1, v5, :cond_40

    .line 1525
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x0:[F

    aget v5, v5, v1

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x1:[F

    aget v6, v6, v1

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x0:[F

    aget v7, v7, v1

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1526
    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3d

    cmpg-float v5, v4, v6

    if-gtz v5, :cond_3d

    move v0, v1

    .line 1523
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1530
    :cond_40
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x1:[F

    aget v1, v1, v2

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float/2addr v1, v5

    cmpl-float v1, v4, v1

    if-lez v1, :cond_4e

    move v0, v2

    .line 1533
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6f

    .line 1534
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    div-float v0, v4, v0

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1536
    :cond_6f
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1537
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->l:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;->onSegment(I)V

    .line 1538
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->performClick()Z

    goto :goto_b
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 1545
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public select(I)V
    .registers 2

    .prologue
    .line 1456
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    .line 1457
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->invalidate()V

    .line 1458
    return-void
.end method

.method public set(DDDDI)V
    .registers 15

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1439
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    .line 1440
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aput-wide p1, v1, v2

    .line 1441
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    const/4 v2, 0x1

    aput-wide p3, v1, v2

    .line 1442
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aput-wide p5, v1, v3

    .line 1443
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    const/4 v2, 0x3

    aput-wide p7, v1, v2

    .line 1444
    iput p9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    .line 1445
    if-eqz v0, :cond_44

    .line 1446
    new-array v0, v3, [F

    fill-array-data v0, :array_48

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1447
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1448
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1449
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1450
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1452
    :cond_44
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->invalidate()V

    .line 1453
    return-void

    .line 1446
    :array_48
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V
    .registers 2

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->l:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    .line 1436
    return-void
.end method
