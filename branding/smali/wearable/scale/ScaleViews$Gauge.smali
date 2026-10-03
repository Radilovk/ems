.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gauge"
.end annotation


# instance fields
.field final p:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;

.field score:I

.field shown:F

.field sub:Ljava/lang/String;

.field verdict:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 676
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 668
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    .line 669
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    .line 670
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    .line 672
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->verdict:Ljava/lang/String;

    .line 673
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->sub:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 678
    return-void
.end method

.method static col(I)I
    .registers 2

    .prologue
    .line 693
    if-gez p0, :cond_6

    const v0, -0x948d80

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x50

    if-lt p0, v0, :cond_e

    const v0, -0xdd3aa2

    goto :goto_5

    :cond_e
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_16

    const v0, -0xa61f5

    goto :goto_5

    :cond_16
    const v0, -0x10bbbc

    goto :goto_5
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .prologue
    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x42000000    # 32.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 699
    const/high16 v1, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .line 701
    const/high16 v2, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v16

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v15, v3

    sub-float v3, v11, v3

    add-float/2addr v3, v1

    add-float v4, v16, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v15, v5

    add-float/2addr v5, v11

    sub-float/2addr v5, v1

    add-float v6, v16, v15

    sub-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 706
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v3, 0x32

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    const/high16 v3, 0x43070000    # 135.0f

    const/high16 v4, 0x43870000    # 270.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 708
    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->col(I)I

    move-result v7

    .line 709
    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    if-ltz v1, :cond_ea

    .line 710
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, -0x1

    const v8, 0x3dcccccd    # 0.1f

    invoke-static {v7, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    const/high16 v3, 0x43070000    # 135.0f

    const/high16 v1, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->shown:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v1, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 715
    :cond_ea
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    if-ltz v1, :cond_210

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_110
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 720
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    if-ltz v1, :cond_214

    move-object/from16 v0, p0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->shown:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :goto_134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v15

    add-float v12, v1, v2

    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v8, p1

    move-object/from16 v14, p0

    invoke-static/range {v8 .. v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const-string v1, "\u0433\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442"

    const-string v2, "readiness"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const v2, 0x3e75c28f    # 0.24f

    mul-float/2addr v2, v15

    add-float v12, v1, v2

    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v8, p1

    move-object/from16 v14, p0

    invoke-static/range {v8 .. v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 726
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 728
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->verdict:Ljava/lang/String;

    add-float v1, v16, v15

    const/high16 v2, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v12, v1, v2

    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v8, p1

    move-object/from16 v14, p0

    invoke-static/range {v8 .. v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 730
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 731
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->sub:Ljava/lang/String;

    add-float v1, v16, v15

    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v2

    add-float v12, v1, v2

    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v8, p1

    move-object/from16 v14, p0

    invoke-static/range {v8 .. v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 733
    return-void

    .line 718
    :cond_210
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_110

    .line 720
    :cond_214
    const-string v10, "\u2014"

    goto/16 :goto_134
.end method

.method public set(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 682
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    .line 683
    if-eqz p2, :cond_38

    :goto_5
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->verdict:Ljava/lang/String;

    .line 684
    if-eqz p3, :cond_3b

    :goto_9
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->sub:Ljava/lang/String;

    .line 685
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 686
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 687
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 688
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Sweep;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Sweep;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 689
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 690
    return-void

    .line 683
    :cond_38
    const-string p2, ""

    goto :goto_5

    .line 684
    :cond_3b
    const-string p3, ""

    goto :goto_9
.end method
