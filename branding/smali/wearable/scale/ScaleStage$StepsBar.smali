.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;
.super Landroid/view/View;
.source "ScaleStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StepsBar"
.end annotation


# instance fields
.field at:I

.field final p:Landroid/graphics/Paint;

.field pulse:F

.field va:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 590
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 584
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    .line 591
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_34

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->va:Landroid/animation/ValueAnimator;

    .line 592
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 593
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->va:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 594
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->va:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Pulse;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Pulse;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 595
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 596
    return-void

    .line 591
    :array_34
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method at(I)V
    .registers 2

    .prologue
    .line 599
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    .line 600
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->invalidate()V

    .line 601
    return-void
.end method

.method d(F)F
    .registers 3

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 609
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 610
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 611
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    .line 615
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u0412\u0440\u044a\u0437\u043a\u0430"

    const-string v2, "Link"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, "\u0421\u0442\u044a\u043f\u0438"

    const-string v2, "Step on"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e"

    const-string v2, "Steady"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string v1, "\u0421\u043a\u0430\u043d\u0438\u0440\u0430\u043d\u0435"

    const-string v2, "Scan"

    .line 616
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    .line 617
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v8

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v8

    sub-float v9, v0, v1

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v2

    .line 618
    const/4 v0, 0x0

    move v6, v0

    :goto_52
    const/4 v0, 0x5

    if-ge v6, v0, :cond_187

    .line 619
    int-to-float v0, v6

    mul-float/2addr v0, v9

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    add-float v10, v8, v0

    .line 620
    const/4 v0, 0x4

    if-ge v6, v0, :cond_95

    .line 621
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 622
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ge v6, v0, :cond_15a

    const v0, -0xdd3aa2

    :goto_73
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 623
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v0

    add-float v1, v10, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v9

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v8

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v3

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 625
    :cond_95
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 626
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v6, v0, :cond_ca

    .line 627
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const v1, -0xdd3aa2

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->pulse:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 628
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->pulse:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 630
    :cond_ca
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-lt v6, v0, :cond_d8

    const/4 v0, 0x4

    if-ne v6, v0, :cond_164

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_164

    :cond_d8
    const v0, -0xdd3aa2

    :goto_db
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 632
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 633
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-gt v6, v0, :cond_177

    const v0, -0xf4e5f0

    :goto_f2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 634
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 635
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 636
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 637
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-lt v6, v0, :cond_119

    const/4 v0, 0x4

    if-ne v6, v0, :cond_17b

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17b

    :cond_119
    const-string v0, "\u2713"

    :goto_11b
    const/high16 v1, 0x40900000    # 4.5f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 638
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v6, v0, :cond_182

    const/4 v0, 0x1

    :goto_12e
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 639
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 640
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v6, v0, :cond_184

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_144
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    aget-object v0, v7, v6

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 618
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_52

    .line 622
    :cond_15a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x32

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_73

    .line 630
    :cond_164
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v6, v0, :cond_16d

    const v0, -0xdd3aa2

    goto/16 :goto_db

    .line 631
    :cond_16d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x28

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_db

    .line 633
    :cond_177
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_f2

    .line 637
    :cond_17b
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11b

    .line 638
    :cond_182
    const/4 v0, 0x0

    goto :goto_12e

    .line 640
    :cond_184
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_144

    .line 643
    :cond_187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 644
    return-void
.end method
