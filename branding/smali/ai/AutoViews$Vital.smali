.class public final Lcom/isaigu/gymapp/ai/AutoViews$Vital;
.super Landroid/view/View;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vital"
.end annotation


# instance fields
.field private color:I

.field private final heart:Landroid/graphics/Paint;

.field private hr:I

.field private final num:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 568
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 562
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    .line 563
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    const v1, 0x400ccccd    # 2.2f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 572
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 573
    return-void
.end method

.method private static heartPath(FFF)Landroid/graphics/Path;
    .registers 15

    .prologue
    const v11, 0x3e0f5c29    # 0.14f

    const v10, 0x3d4ccccd    # 0.05f

    const v9, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f000000    # 0.5f

    const v7, 0x3eae147b    # 0.34f

    .line 611
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 612
    mul-float v1, v8, p2

    add-float/2addr v1, p0

    mul-float v2, v9, p2

    add-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 613
    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v2, p2

    add-float/2addr v2, p1

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, p2

    sub-float v3, p0, v3

    mul-float v4, v7, p2

    add-float/2addr v4, p1

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, p2

    add-float/2addr v5, p0

    const v6, 0x3e23d70a    # 0.16f

    mul-float/2addr v6, p2

    add-float/2addr v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 614
    mul-float v1, v7, p2

    add-float/2addr v1, p0

    mul-float v2, v10, p2

    add-float/2addr v2, p1

    const v3, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v3, p2

    add-float/2addr v3, p0

    mul-float v4, v11, p2

    add-float/2addr v4, p1

    mul-float v5, v8, p2

    add-float/2addr v5, p0

    const v6, 0x3e8a3d71    # 0.27f

    mul-float/2addr v6, p2

    add-float/2addr v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 615
    const v1, 0x3f07ae14    # 0.53f

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    mul-float v2, v11, p2

    add-float/2addr v2, p1

    const v3, 0x3f28f5c3    # 0.66f

    mul-float/2addr v3, p2

    add-float/2addr v3, p0

    mul-float v4, v10, p2

    add-float/2addr v4, p1

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, p2

    add-float/2addr v5, p0

    const v6, 0x3e23d70a    # 0.16f

    mul-float/2addr v6, p2

    add-float/2addr v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 616
    const v1, 0x3f828f5c    # 1.02f

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    mul-float v2, v7, p2

    add-float/2addr v2, p1

    mul-float v3, v9, p2

    add-float/2addr v3, p0

    const v4, 0x3f1eb852    # 0.62f

    mul-float/2addr v4, p2

    add-float/2addr v4, p1

    mul-float v5, v8, p2

    add-float/2addr v5, p0

    mul-float v6, v9, p2

    add-float/2addr v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 617
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 618
    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const v10, 0x3f0ccccd    # 0.55f

    const v9, 0x3f1eb852    # 0.62f

    const/high16 v8, 0x40000000    # 2.0f

    .line 586
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->getWidth()I

    move-result v6

    .line 587
    int-to-float v1, v6

    mul-float/2addr v1, v9

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 589
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v1, :cond_49

    .line 590
    const-wide/32 v2, 0xea60

    const/16 v1, 0x1e

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    rem-long/2addr v4, v2

    long-to-float v1, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 592
    const v2, 0x3df5c28f    # 0.12f

    neg-float v1, v1

    const/high16 v3, 0x41100000    # 9.0f

    mul-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 593
    const-wide/16 v2, 0x28

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->postInvalidateDelayed(J)V

    .line 595
    :cond_49
    mul-float v4, v7, v0

    .line 596
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v0, :cond_c3

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->color:I

    :goto_53
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    const/4 v1, 0x7

    int-to-float v0, v6

    sub-float/2addr v0, v4

    div-float v2, v0, v8

    mul-float v0, v7, v10

    div-float v3, v4, v8

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->draw(Landroid/graphics/Canvas;IFFFLandroid/graphics/Paint;)V

    .line 598
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v0, :cond_98

    .line 599
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 600
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 601
    int-to-float v0, v6

    sub-float/2addr v0, v4

    div-float/2addr v0, v8

    mul-float v1, v7, v10

    div-float v2, v4, v8

    sub-float/2addr v1, v2

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heartPath(FFF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 602
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 603
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 605
    :cond_98
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v0, :cond_c6

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->color:I

    :goto_a0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 606
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    mul-float v1, v7, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 607
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v0, :cond_c9

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_b4
    int-to-float v1, v6

    div-float/2addr v1, v8

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v7

    mul-float v3, v7, v9

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 608
    return-void

    .line 596
    :cond_c3
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_53

    .line 605
    :cond_c6
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_a0

    .line 607
    :cond_c9
    const-string v0, "\u2014"

    goto :goto_b4
.end method

.method public set(II)V
    .registers 4

    .prologue
    .line 577
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->color:I

    if-eq p2, v0, :cond_f

    .line 578
    :cond_8
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    .line 579
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->color:I

    .line 580
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->invalidate()V

    .line 582
    :cond_f
    return-void
.end method
