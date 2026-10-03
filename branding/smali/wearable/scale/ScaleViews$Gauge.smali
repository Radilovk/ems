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
    .line 651
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 643
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    .line 644
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    .line 645
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    .line 647
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->verdict:Ljava/lang/String;

    .line 648
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->sub:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 653
    return-void
.end method

.method static col(I)I
    .registers 2

    .prologue
    .line 668
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
    .registers 14

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 674
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    .line 675
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    .line 676
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    .line 677
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v8, v2

    sub-float v2, v9, v2

    add-float/2addr v2, v0

    add-float v3, v10, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v8, v4

    add-float/2addr v4, v9

    sub-float/2addr v4, v0

    add-float v5, v10, v8

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 678
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 679
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 680
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 681
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 682
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    const/high16 v2, 0x43070000    # 135.0f

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 683
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->col(I)I

    move-result v6

    .line 684
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    if-ltz v0, :cond_bc

    .line 685
    iget-object v11, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/4 v5, -0x1

    const v7, 0x3dcccccd    # 0.1f

    invoke-static {v6, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 687
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    const/high16 v2, 0x43070000    # 135.0f

    const/high16 v0, 0x43870000    # 270.0f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->shown:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v3, v0, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 688
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 690
    :cond_bc
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 691
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 692
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 693
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    if-ltz v0, :cond_188

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_d8
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 694
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 695
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    if-ltz v0, :cond_18c

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->shown:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_f2
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 696
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 697
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 698
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 699
    const-string v0, "\u0433\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442"

    const-string v1, "readiness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const v2, 0x3e75c28f    # 0.24f

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 700
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 701
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 702
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 703
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->verdict:Ljava/lang/String;

    add-float v1, v10, v8

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 704
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 705
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 706
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 707
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->sub:Ljava/lang/String;

    add-float v1, v10, v8

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 708
    return-void

    .line 693
    :cond_188
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_d8

    .line 695
    :cond_18c
    const-string v0, "\u2014"

    goto/16 :goto_f2
.end method

.method public set(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 657
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->score:I

    .line 658
    if-eqz p2, :cond_38

    :goto_5
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->verdict:Ljava/lang/String;

    .line 659
    if-eqz p3, :cond_3b

    :goto_9
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->sub:Ljava/lang/String;

    .line 660
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

    .line 661
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 662
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 663
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Sweep;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Sweep;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 664
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 665
    return-void

    .line 658
    :cond_38
    const-string p2, ""

    goto :goto_5

    .line 659
    :cond_3b
    const-string p3, ""

    goto :goto_9
.end method
