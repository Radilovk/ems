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
    .line 646
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 642
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    .line 647
    return-void
.end method


# virtual methods
.method at(I)V
    .registers 2

    .prologue
    .line 650
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    .line 651
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->invalidate()V

    .line 652
    return-void
.end method

.method d(F)F
    .registers 3

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    .prologue
    .line 660
    const/4 v1, 0x5

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0421\u0442\u044a\u043f\u0432\u0430\u043d\u0435"

    const-string v3, "Step on"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    const/4 v1, 0x1

    const-string v2, "\u0412\u0440\u044a\u0437\u043a\u0430"

    const-string v3, "Link"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    const/4 v1, 0x2

    const-string v2, "\u0422\u0435\u0433\u043b\u043e"

    const-string v3, "Weight"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    const/4 v1, 0x3

    const-string v2, "\u0410\u043d\u0430\u043b\u0438\u0437"

    const-string v3, "Analysis"

    .line 661
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    const/4 v1, 0x4

    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v3, "Done"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    .line 662
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->now()F

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    rem-float/2addr v1, v2

    const v2, 0x3f99999a    # 1.2f

    div-float v13, v1, v2

    .line 663
    const/high16 v1, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v14

    sub-float v15, v1, v2

    const/high16 v1, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v3

    .line 664
    const/4 v1, 0x0

    move v11, v1

    :goto_63
    const/4 v1, 0x5

    if-ge v11, v1, :cond_1eb

    .line 665
    int-to-float v1, v11

    mul-float/2addr v1, v15

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    add-float v7, v14, v1

    .line 666
    const/4 v1, 0x4

    if-ge v11, v1, :cond_b5

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ge v11, v1, :cond_1c6

    const v1, -0xdd3aa2

    :goto_8c
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    const/high16 v1, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    add-float v2, v7, v1

    add-int/lit8 v1, v11, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v15

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v1, v4

    add-float/2addr v1, v14

    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v4

    sub-float v4, v1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 671
    :cond_b5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 672
    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v11, v1, :cond_fb

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_fb

    .line 673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const v2, -0xdd3aa2

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v13

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    const/high16 v1, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v2

    mul-float/2addr v2, v13

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 676
    :cond_fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-gt v11, v1, :cond_1d0

    const v1, -0xdd3aa2

    :goto_108
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 677
    const/high16 v1, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-gt v11, v1, :cond_1da

    const v1, -0xf4e5f0

    :goto_129
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 681
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 682
    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-lt v11, v1, :cond_15c

    const/4 v1, 0x4

    if-ne v11, v1, :cond_1de

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1de

    :cond_15c
    const-string v1, "\u2713"

    :goto_15e
    const/high16 v2, 0x40900000    # 4.5f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v2

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v7, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v11, v1, :cond_1e6

    const/4 v1, 0x1

    :goto_17b
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    if-ne v11, v1, :cond_1e8

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_199
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    aget-object v6, v12, v11

    const/high16 v1, 0x42100000    # 36.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v1

    add-float v8, v3, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float v1, v15, v1

    const/high16 v2, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->d(F)F

    move-result v2

    sub-float v9, v1, v2

    move-object/from16 v4, p1

    move-object/from16 v10, p0

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 664
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_63

    .line 668
    :cond_1c6
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x32

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    goto/16 :goto_8c

    .line 676
    :cond_1d0
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x28

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    goto/16 :goto_108

    .line 678
    :cond_1da
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_129

    .line 682
    :cond_1de
    add-int/lit8 v1, v11, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_15e

    .line 683
    :cond_1e6
    const/4 v1, 0x0

    goto :goto_17b

    .line 685
    :cond_1e8
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_199

    .line 688
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 689
    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1fd

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->postInvalidateOnAnimation()V

    .line 692
    :cond_1fd
    return-void
.end method
