.class public final Lcom/isaigu/gymapp/ai/AutoViews$Dots;
.super Landroid/view/View;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dots"
.end annotation


# instance fields
.field private all:I

.field private done:I

.field private final p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 629
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 624
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->p:Landroid/graphics/Paint;

    .line 630
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->p:Landroid/graphics/Paint;

    const v1, 0x3fcccccd    # 1.6f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 631
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 643
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->all:I

    if-gtz v0, :cond_7

    .line 665
    :cond_6
    return-void

    .line 646
    :cond_7
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v3

    .line 647
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v4

    .line 648
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->all:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->all:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 649
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    div-float/2addr v0, v8

    add-float v1, v0, v3

    .line 650
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v8

    .line 651
    const/4 v0, 0x1

    :goto_32
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->all:I

    if-gt v0, v2, :cond_6

    .line 652
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->done:I

    if-ge v0, v2, :cond_5b

    .line 653
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 654
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->p:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 662
    :goto_48
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->done:I

    if-ne v0, v2, :cond_83

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v2, v3

    :goto_4f
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 663
    mul-float v2, v8, v3

    add-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 655
    :cond_5b
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->done:I

    if-ne v0, v2, :cond_6e

    .line 656
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 657
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->p:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_48

    .line 659
    :cond_6e
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 660
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->p:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v7, 0x66

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_48

    :cond_83
    move v2, v3

    .line 662
    goto :goto_4f
.end method

.method public set(II)V
    .registers 4

    .prologue
    .line 634
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->done:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->all:I

    if-eq p2, v0, :cond_f

    .line 635
    :cond_8
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->done:I

    .line 636
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->all:I

    .line 637
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->invalidate()V

    .line 639
    :cond_f
    return-void
.end method
