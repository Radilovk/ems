.class final Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;
.super Landroid/graphics/drawable/Drawable;
.source "XemsLocalAvatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Glow"
.end annotation


# instance fields
.field private final p:Landroid/graphics/Paint;

.field private final v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 546
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    .line 549
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    .line 550
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 551
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    .line 555
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 556
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 557
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_20

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_2f

    .line 558
    :cond_20
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->setBounds(IIII)V

    .line 560
    :cond_2f
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 561
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 562
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 563
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 564
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_66

    .line 583
    :goto_65
    return-void

    .line 567
    :cond_66
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    add-float/2addr v4, v0

    .line 568
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    .line 570
    const v0, 0x400ccccd    # 2.2f

    mul-float v5, v0, v2

    .line 571
    const/16 v0, 0xc

    :goto_83
    const/4 v6, 0x1

    if-lt v0, v6, :cond_ba

    .line 572
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v2

    add-float/2addr v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 573
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    rsub-int/lit8 v7, v0, 0xc

    mul-int/lit8 v7, v7, 0x9

    add-int/lit8 v7, v7, 0xa

    const/16 v8, 0x5e

    const/16 v9, 0xf0

    const/16 v10, 0x8c

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    const/high16 v6, 0x40900000    # 4.5f

    mul-float/2addr v6, v2

    sub-float v6, v3, v6

    int-to-float v7, v0

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 571
    add-int/lit8 v0, v0, -0x1

    goto :goto_83

    .line 577
    :cond_ba
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x40900000    # 4.5f

    mul-float/2addr v5, v2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 578
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    const v5, -0xa10f74

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    const/high16 v0, 0x40100000    # 2.25f

    mul-float/2addr v0, v2

    sub-float v0, v3, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 580
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    const v5, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 582
    const/high16 v0, 0x40100000    # 2.25f

    mul-float/2addr v0, v2

    sub-float v0, v3, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_65
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 593
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 586
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 589
    return-void
.end method
