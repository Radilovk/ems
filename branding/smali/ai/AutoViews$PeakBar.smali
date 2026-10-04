.class public final Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;
.super Landroid/view/View;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeakBar"
.end annotation


# instance fields
.field private final fill:Landroid/graphics/Paint;

.field private lastH:I

.field private final line:Landroid/graphics/Paint;

.field private final tri:Landroid/graphics/Path;

.field private final txt:Landroid/graphics/Paint;

.field private value:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 675
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 667
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->fill:Landroid/graphics/Paint;

    .line 668
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    .line 669
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    .line 670
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    .line 676
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 677
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 678
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 679
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 680
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 681
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->getWidth()I

    move-result v11

    .line 695
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->getHeight()I

    move-result v0

    .line 696
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    .line 697
    int-to-float v1, v0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v3

    sub-float v4, v1, v3

    .line 698
    int-to-float v1, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 699
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->lastH:I

    if-eq v0, v1, :cond_91

    .line 700
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->lastH:I

    .line 702
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    array-length v0, v0

    new-array v5, v0, [I

    .line 703
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    array-length v0, v0

    new-array v6, v0, [F

    .line 704
    const/4 v0, 0x0

    :goto_3d
    array-length v1, v5

    if-ge v0, v1, :cond_5c

    .line 705
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    .line 706
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    aget v3, v3, v1

    aput v3, v5, v0

    .line 707
    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    aget v1, v7, v1

    const/high16 v7, 0x3fa00000    # 1.25f

    div-float/2addr v1, v7

    sub-float v1, v3, v1

    aput v1, v6, v0

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 709
    :cond_5c
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->fill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 710
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 711
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    int-to-float v1, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v1, v12

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 712
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    int-to-float v1, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v12

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 713
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    int-to-float v1, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 714
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 716
    :cond_91
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->fill:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_1ad

    const/16 v0, 0xeb

    :goto_99
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 717
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->tri:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 720
    sub-float v0, v4, v2

    const/high16 v1, 0x3fa00000    # 1.25f

    div-float/2addr v0, v1

    sub-float v7, v4, v0

    .line 721
    sub-float v0, v4, v7

    mul-float/2addr v0, v12

    sub-float v1, v4, v2

    div-float/2addr v0, v1

    .line 722
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x99

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    const v3, 0x3f99999a    # 1.2f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 724
    int-to-float v1, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v1, v0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v3

    sub-float v6, v1, v3

    int-to-float v1, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    add-float v8, v0, v1

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 725
    sub-float v0, v4, v2

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->value:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fa00000    # 1.25f

    div-float/2addr v0, v1

    sub-float v7, v4, v0

    .line 726
    sub-float v0, v4, v7

    mul-float/2addr v0, v12

    sub-float v1, v4, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    add-float/2addr v1, v0

    .line 727
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 728
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    const/high16 v3, 0x40200000    # 2.5f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 729
    int-to-float v0, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v6, v0, v1

    int-to-float v0, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float v8, v0, v1

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->line:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 731
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 732
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->value:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1b1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    const/4 v5, 0x4

    aget v0, v0, v5

    :goto_13c
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 733
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 734
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v0, v7, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->value:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 736
    int-to-float v0, v11

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float/2addr v0, v4

    .line 737
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v4, v0

    int-to-float v5, v11

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1a7

    .line 738
    const/4 v0, 0x0

    int-to-float v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v1, v4, v1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v4

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 740
    :cond_1a7
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->txt:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 741
    return-void

    .line 716
    :cond_1ad
    const/16 v0, 0xff

    goto/16 :goto_99

    .line 732
    :cond_1b1
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_13c
.end method

.method public set(D)V
    .registers 8

    .prologue
    .line 685
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 686
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->value:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3ba3d70a    # 0.005f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_21

    .line 687
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->value:F

    .line 688
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->invalidate()V

    .line 690
    :cond_21
    return-void
.end method
