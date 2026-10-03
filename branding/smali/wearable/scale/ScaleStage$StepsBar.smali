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


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 650
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 646
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    .line 651
    return-void
.end method


# virtual methods
.method at(I)V
    .registers 2

    .prologue
    .line 654
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    .line 655
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->invalidate()V

    .line 656
    return-void
.end method

.method d(F)F
    .registers 3

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    .line 664
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u0421\u0442\u044a\u043f\u0438"

    const-string v2, "Step on"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, "\u0412\u0440\u044a\u0437\u043a\u0430"

    const-string v2, "Link"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "\u0422\u0435\u0433\u043b\u043e"

    const-string v2, "Weight"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string v1, "\u0410\u043d\u0430\u043b\u0438\u0437"

    const-string v2, "Analysis"

    .line 665
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    .line 666
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->now()F

    move-result v0

    const v1, 0x3f99999a    # 1.2f

    rem-float/2addr v0, v1

    const v1, 0x3f99999a    # 1.2f

    div-float v8, v0, v1

    .line 667
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v9

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v9

    sub-float v10, v0, v1

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v2

    .line 668
    const/4 v0, 0x0

    move v6, v0

    :goto_5f
    const/4 v0, 0x5

    if-ge v6, v0, :cond_183

    .line 669
    int-to-float v0, v6

    mul-float/2addr v0, v10

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    add-float v11, v9, v0

    .line 670
    const/4 v0, 0x4

    if-ge v6, v0, :cond_a2

    .line 671
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 672
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ge v6, v0, :cond_160

    const v0, -0xdd3aa2

    :goto_80
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 673
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v0

    add-float v1, v11, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v10

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v9

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v3

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 675
    :cond_a2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 676
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v6, v0, :cond_d8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_d8

    .line 677
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const v1, -0xdd3aa2

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 678
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 680
    :cond_d8
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-gt v6, v0, :cond_16a

    const v0, -0xdd3aa2

    :goto_e1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 681
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 682
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-gt v6, v0, :cond_174

    const v0, -0xf4e5f0

    :goto_f8
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 684
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 685
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 686
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-lt v6, v0, :cond_11f

    const/4 v0, 0x4

    if-ne v6, v0, :cond_177

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_177

    :cond_11f
    const-string v0, "\u2713"

    :goto_121
    const/high16 v1, 0x40900000    # 4.5f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 687
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v6, v0, :cond_17e

    const/4 v0, 0x1

    :goto_134
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 688
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 689
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v6, v0, :cond_180

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_14a
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 690
    aget-object v0, v7, v6

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 668
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_5f

    .line 672
    :cond_160
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x32

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_80

    .line 680
    :cond_16a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x28

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_e1

    .line 682
    :cond_174
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_f8

    .line 686
    :cond_177
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_121

    .line 687
    :cond_17e
    const/4 v0, 0x0

    goto :goto_134

    .line 689
    :cond_180
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_14a

    .line 692
    :cond_183
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 693
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_191

    .line 694
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->postInvalidateOnAnimation()V

    .line 696
    :cond_191
    return-void
.end method
