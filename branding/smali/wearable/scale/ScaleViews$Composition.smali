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
    .line 1558
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

    .line 1568
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1559
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    .line 1560
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    .line 1561
    new-array v0, v1, [D

    fill-array-data v0, :array_2e

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    .line 1562
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x0:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x1:[F

    .line 1563
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    .line 1564
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->grow:F

    .line 1569
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->setClickable(Z)V

    .line 1570
    return-void

    .line 1561
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
    .registers 23

    .prologue
    .line 1600
    const-wide/16 v4, 0x0

    .line 1601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    array-length v6, v3

    const/4 v2, 0x0

    move-wide/from16 v16, v4

    :goto_a
    if-ge v2, v6, :cond_1c

    aget-wide v4, v3, v2

    .line 1602
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1651
    :cond_14
    return-void

    .line 1605
    :cond_15
    add-double v4, v4, v16

    .line 1601
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v16, v4

    goto :goto_a

    .line 1607
    :cond_1c
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const-string v3, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v4, "Fat"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    const/4 v2, 0x1

    const-string v3, "\u0412\u043e\u0434\u0430"

    const-string v4, "Water"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    const/4 v2, 0x2

    const-string v3, "\u0411\u0435\u043b\u0442\u044a\u043a"

    const-string v4, "Protein"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    const/4 v2, 0x3

    const-string v3, "\u041c\u0438\u043d\u0435\u0440\u0430\u043b\u0438"

    const-string v4, "Minerals"

    .line 1608
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    .line 1609
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v15

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->grow:F

    mul-float v5, v2, v3

    const/high16 v2, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    const/high16 v2, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    .line 1611
    const/4 v2, 0x0

    move v3, v2

    move v4, v15

    :goto_77
    const/4 v2, 0x4

    if-ge v3, v2, :cond_169

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aget-wide v8, v2, v3

    div-double v8, v8, v16

    float-to-double v10, v5

    mul-double/2addr v8, v10

    double-to-float v8, v8

    .line 1613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x0:[F

    aput v4, v2, v3

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x1:[F

    add-float v9, v4, v8

    aput v9, v2, v3

    .line 1615
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    if-nez v3, :cond_149

    const/4 v2, 0x0

    :goto_9a
    add-float v10, v4, v2

    add-float v11, v4, v8

    const/4 v2, 0x3

    if-ne v3, v2, :cond_153

    const/4 v2, 0x0

    :goto_a2
    sub-float v2, v11, v2

    add-float v11, v7, v6

    invoke-virtual {v9, v10, v7, v2, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ltz v2, :cond_c2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ne v2, v3, :cond_15d

    :cond_c2
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v2, v2, v3

    :goto_c6
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    const/high16 v9, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    const/high16 v10, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1619
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ne v2, v3, :cond_143

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/high16 v9, 0x40200000    # 2.5f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    neg-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    neg-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 1624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->r:Landroid/graphics/RectF;

    const/high16 v9, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    const/high16 v10, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1626
    :cond_143
    add-float/2addr v4, v8

    .line 1611
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_77

    .line 1615
    :cond_149
    const/high16 v2, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    goto/16 :goto_9a

    :cond_153
    const/high16 v2, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    goto/16 :goto_a2

    .line 1617
    :cond_15d
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v2, v2, v3

    const/16 v10, 0x5a

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_c6

    .line 1628
    :cond_169
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->grow:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_14

    .line 1632
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v15

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float v19, v2, v3

    add-float v2, v7, v6

    const/high16 v3, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    add-float v6, v2, v3

    .line 1633
    const/4 v2, 0x0

    move v14, v2

    :goto_18e
    const/4 v2, 0x4

    if-ge v14, v2, :cond_14

    .line 1634
    int-to-float v2, v14

    mul-float v2, v2, v19

    add-float v20, v15, v2

    .line 1635
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ltz v2, :cond_1a2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    if-ne v2, v14, :cond_2e1

    :cond_1a2
    const/4 v2, 0x1

    move v9, v2

    .line 1636
    :goto_1a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v3, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v3, v3, v14

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1638
    const/high16 v2, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v2, v2, v20

    const/high16 v3, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    sub-float v3, v6, v3

    const/high16 v4, 0x40900000    # 4.5f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    if-eqz v9, :cond_2e5

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_205
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aget-wide v4, v4, v14

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u043a\u0433"

    const-string v5, " kg"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v5, v20, v2

    const/high16 v7, -0x40800000    # -1.0f

    move-object/from16 v2, p1

    move-object/from16 v8, p0

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    if-eqz v9, :cond_2e9

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v2, v2, v14

    :goto_26a
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    aget-object v9, v18, v14

    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v10, v20, v2

    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v11, v6, v2

    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v7, p1

    move-object/from16 v13, p0

    invoke-static/range {v7 .. v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->p:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aget-wide v4, v3, v14

    div-double v4, v4, v16

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v10, v20, v2

    const/high16 v2, 0x41f80000    # 31.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v11, v6, v2

    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v7, p1

    move-object/from16 v13, p0

    invoke-static/range {v7 .. v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1633
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_18e

    .line 1635
    :cond_2e1
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_1a4

    .line 1642
    :cond_2e5
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_205

    .line 1646
    :cond_2e9
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->COL:[I

    aget v2, v2, v14

    const/16 v4, 0x96

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_26a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .prologue
    const/high16 v10, 0x42400000    # 48.0f

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 1655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 1678
    :cond_b
    :goto_b
    return v9

    .line 1658
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->l:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    if-eqz v0, :cond_b

    .line 1659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move v1, v3

    move v0, v3

    .line 1661
    :goto_1c
    const/4 v5, 0x4

    if-ge v1, v5, :cond_40

    .line 1663
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

    .line 1664
    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3d

    cmpg-float v5, v4, v6

    if-gtz v5, :cond_3d

    move v0, v1

    .line 1661
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1668
    :cond_40
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->x1:[F

    aget v1, v1, v2

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float/2addr v1, v5

    cmpl-float v1, v4, v1

    if-lez v1, :cond_4e

    move v0, v2

    .line 1671
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6f

    .line 1672
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

    .line 1674
    :cond_6f
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1675
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->l:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;->onSegment(I)V

    .line 1676
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->performClick()Z

    goto :goto_b
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 1683
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public select(I)V
    .registers 2

    .prologue
    .line 1594
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    .line 1595
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->invalidate()V

    .line 1596
    return-void
.end method

.method public set(DDDDI)V
    .registers 15

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1577
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    .line 1578
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aput-wide p1, v1, v2

    .line 1579
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    const/4 v2, 0x1

    aput-wide p3, v1, v2

    .line 1580
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    aput-wide p5, v1, v3

    .line 1581
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->kg:[D

    const/4 v2, 0x3

    aput-wide p7, v1, v2

    .line 1582
    iput p9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->sel:I

    .line 1583
    if-eqz v0, :cond_44

    .line 1584
    new-array v0, v3, [F

    fill-array-data v0, :array_48

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1585
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1586
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1587
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1588
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1590
    :cond_44
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->invalidate()V

    .line 1591
    return-void

    .line 1584
    :array_48
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V
    .registers 2

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->l:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    .line 1574
    return-void
.end method
