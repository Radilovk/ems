.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuildGrid"
.end annotation


# instance fields
.field fat:I

.field muscle:I

.field final p:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 1709
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1704
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    .line 1705
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->r:Landroid/graphics/RectF;

    .line 1706
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->muscle:I

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->fat:I

    .line 1710
    return-void
.end method

.method static cellColor(II)I
    .registers 4

    .prologue
    const/4 v1, 0x1

    const v0, -0xa61f5

    .line 1720
    if-nez p1, :cond_a

    .line 1721
    const v0, -0xc74208

    .line 1726
    :cond_9
    :goto_9
    return v0

    .line 1723
    :cond_a
    if-ne p1, v1, :cond_12

    .line 1724
    if-lt p0, v1, :cond_9

    const v0, -0xdd3aa2

    goto :goto_9

    .line 1726
    :cond_12
    const/4 v1, 0x2

    if-ge p0, v1, :cond_9

    const v0, -0x10bbbc

    goto :goto_9
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 1731
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    add-float/2addr v0, v1

    .line 1732
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 1733
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    .line 1734
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v4

    sub-float v1, v7, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float v5, v1, v2

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float v6, v0, v1

    .line 1735
    const/4 v0, 0x0

    move v3, v0

    :goto_32
    const/4 v0, 0x4

    if-ge v3, v0, :cond_b3

    .line 1736
    const/4 v0, 0x0

    move v2, v0

    :goto_37
    const/4 v0, 0x4

    if-ge v2, v0, :cond_af

    .line 1737
    rsub-int/lit8 v1, v3, 0x3

    .line 1738
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->muscle:I

    if-ne v1, v0, :cond_a6

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->fat:I

    if-ne v2, v0, :cond_a6

    const/4 v0, 0x1

    .line 1739
    :goto_45
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->cellColor(II)I

    move-result v1

    .line 1740
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->r:Landroid/graphics/RectF;

    int-to-float v9, v2

    add-float v10, v5, v4

    mul-float/2addr v9, v10

    int-to-float v10, v3

    add-float v11, v6, v4

    mul-float/2addr v10, v11

    int-to-float v11, v2

    add-float v12, v5, v4

    mul-float/2addr v11, v12

    add-float/2addr v11, v5

    int-to-float v12, v3

    add-float v13, v6, v4

    mul-float/2addr v12, v13

    add-float/2addr v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1741
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1742
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_a8

    :goto_6b
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1743
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->r:Landroid/graphics/RectF;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1744
    if-eqz v0, :cond_a2

    .line 1745
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1746
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1736
    :cond_a2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_37

    .line 1738
    :cond_a6
    const/4 v0, 0x0

    goto :goto_45

    .line 1742
    :cond_a8
    const/16 v9, 0x2e

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    goto :goto_6b

    .line 1735
    :cond_af
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_32

    .line 1750
    :cond_b3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1751
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1752
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1753
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1754
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    const-string v0, "\u25b2 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "\u25b2 muscle"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    sub-float v4, v0, v4

    const/high16 v0, 0x40000000    # 2.0f

    div-float v5, v7, v0

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1755
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1756
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->p:Landroid/graphics/Paint;

    const-string v0, "\u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u25b6"

    const-string v2, "fat \u25b6"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    sub-float v4, v0, v3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v5, v7, v0

    move-object v0, p1

    move v3, v7

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1757
    return-void
.end method

.method public set(II)V
    .registers 3

    .prologue
    .line 1714
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->muscle:I

    .line 1715
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->fat:I

    .line 1716
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->invalidate()V

    .line 1717
    return-void
.end method
