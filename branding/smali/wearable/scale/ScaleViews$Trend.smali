.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trend"
.end annotation


# instance fields
.field final area:Landroid/graphics/Path;

.field color:I

.field compact:Z

.field downX:F

.field downY:F

.field final line:Landroid/graphics/Path;

.field final p:Landroid/graphics/Paint;

.field px:[F

.field py:[F

.field sel:I

.field t:[J

.field unit:Ljava/lang/String;

.field v:[D


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 772
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 757
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    .line 758
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    .line 759
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    .line 760
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    .line 761
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    .line 762
    const v0, -0xdd3aa2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    .line 763
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->unit:Ljava/lang/String;

    .line 766
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    .line 767
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->py:[F

    .line 768
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    .line 773
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    .line 774
    return-void
.end method


# virtual methods
.method drawPick(Landroid/graphics/Canvas;FF)V
    .registers 14

    .prologue
    .line 828
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    if-ltz v0, :cond_1e

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v1, v1

    if-lt v0, v1, :cond_1f

    .line 875
    :cond_1e
    :goto_1e
    return-void

    .line 831
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    aget v1, v0, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->py:[F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    aget v6, v0, v2

    .line 832
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 833
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const v2, 0x3f99999a    # 1.2f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 834
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    const/16 v3, 0x78

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 835
    add-float v4, p2, p3

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 836
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 837
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 838
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 839
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->unit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 841
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v2, v2

    if-ge v0, v2, :cond_21a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    aget-wide v4, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_21a

    .line 842
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "d.MM.yyyy  HH:mm"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    aget-wide v4, v4, v5

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 843
    :goto_cf
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 844
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 845
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 846
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 847
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 848
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 849
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float/2addr v4, v2

    .line 850
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21e

    const/high16 v2, 0x41f00000    # 30.0f

    :goto_110
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    .line 851
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v4, v8

    sub-float/2addr v1, v8

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 852
    sub-float v1, v6, v2

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float/2addr v1, v7

    .line 853
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_14e

    .line 854
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    add-float/2addr v1, v6

    .line 856
    :cond_14e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 857
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 858
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v5, v4

    add-float v8, v1, v2

    invoke-direct {v6, v5, v1, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 859
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 860
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 861
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 862
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v5, v4

    add-float/2addr v2, v1

    invoke-direct {v6, v5, v1, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 863
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 864
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 865
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 866
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 867
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 868
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v4, v2

    add-float/2addr v2, v5

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 869
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 870
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 871
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 872
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 873
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v4, v2

    add-float/2addr v2, v5

    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    .line 842
    :cond_21a
    const-string v0, ""

    goto/16 :goto_cf

    .line 850
    :cond_21e
    const/high16 v2, 0x42380000    # 46.0f

    goto/16 :goto_110
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 29

    .prologue
    .line 879
    const/4 v10, 0x0

    .line 880
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v4, -0x10000000000001L

    .line 881
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v13, v12

    const/4 v6, 0x0

    move v11, v6

    :goto_12
    if-ge v11, v13, :cond_2a

    aget-wide v14, v12, v11

    .line 882
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_4d0

    .line 883
    add-int/lit8 v10, v10, 0x1

    .line 884
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 885
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 881
    :goto_26
    add-int/lit8 v11, v11, 0x1

    move-wide v8, v6

    goto :goto_12

    .line 888
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v6, :cond_cf

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    move v14, v6

    .line 889
    :goto_39
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v6, :cond_da

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    move v7, v6

    .line 890
    :goto_48
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v6, :cond_e5

    const/high16 v6, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    .line 891
    :goto_56
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v11, :cond_ef

    const/high16 v11, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    .line 892
    :goto_64
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v14

    sub-float v18, v12, v7

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    sub-float v19, v7, v11

    .line 893
    if-eqz v10, :cond_80

    const/4 v7, 0x0

    cmpg-float v7, v18, v7

    if-lez v7, :cond_80

    const/4 v7, 0x0

    cmpg-float v7, v19, v7

    if-gtz v7, :cond_f9

    .line 894
    :cond_80
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-nez v4, :cond_ce

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const-string v4, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430\u0442\u0430 \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u0441\u043b\u0435\u0434 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435"

    const-string v6, "The chart is shown after the second measurement"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v4, v8

    const/high16 v9, -0x40800000    # -1.0f

    move-object/from16 v4, p1

    move-object/from16 v10, p0

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 985
    :cond_ce
    :goto_ce
    return-void

    .line 888
    :cond_cf
    const/high16 v6, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    move v14, v6

    goto/16 :goto_39

    .line 889
    :cond_da
    const/high16 v6, 0x42380000    # 46.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    move v7, v6

    goto/16 :goto_48

    .line 890
    :cond_e5
    const/high16 v6, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    goto/16 :goto_56

    .line 891
    :cond_ef
    const/high16 v11, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    goto/16 :goto_64

    .line 902
    :cond_f9
    sub-double v10, v4, v8

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v20, 0x3f947ae147ae147bL    # 0.02

    mul-double v16, v16, v20

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 903
    const-wide v12, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v12, v10

    sub-double v22, v8, v12

    .line 904
    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v8, v10

    add-double v24, v4, v8

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v4, v4

    if-lez v4, :cond_1ad

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-wide v12, v4

    :goto_131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v4, v4

    if-lez v4, :cond_1b1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    move-wide/from16 v20, v4

    .line 906
    :goto_147
    cmp-long v4, v20, v12

    if-lez v4, :cond_1b6

    const/4 v4, 0x1

    move v15, v4

    .line 907
    :goto_14d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 909
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 910
    const/4 v5, 0x0

    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v10, v10

    if-eq v4, v10, :cond_181

    .line 912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v4, v4

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v4, v4

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->py:[F

    .line 915
    :cond_181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    const/high16 v10, 0x7fc00000    # Float.NaN

    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([FF)V

    .line 916
    const/4 v4, 0x0

    move/from16 v16, v8

    move/from16 v17, v9

    :goto_18f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v8, v8

    if-ge v4, v8, :cond_231

    .line 917
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    aget-wide v8, v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_1b9

    move/from16 v8, v16

    move/from16 v9, v17

    .line 916
    :goto_1a6
    add-int/lit8 v4, v4, 0x1

    move/from16 v16, v8

    move/from16 v17, v9

    goto :goto_18f

    .line 905
    :cond_1ad
    const-wide/16 v4, 0x0

    move-wide v12, v4

    goto :goto_131

    :cond_1b1
    const-wide/16 v4, 0x1

    move-wide/from16 v20, v4

    goto :goto_147

    .line 906
    :cond_1b6
    const/4 v4, 0x0

    move v15, v4

    goto :goto_14d

    .line 920
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1fe

    move/from16 v8, v18

    .line 921
    :goto_1c3
    add-float v9, v14, v8

    .line 922
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    aget-wide v10, v8, v4

    sub-double v10, v24, v10

    sub-double v16, v24, v22

    div-double v10, v10, v16

    double-to-float v8, v10

    mul-float v8, v8, v19

    add-float/2addr v8, v6

    .line 923
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    aput v9, v10, v4

    .line 924
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->py:[F

    aput v8, v10, v4

    .line 925
    if-nez v5, :cond_222

    .line 926
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 927
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    add-float v10, v6, v19

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 928
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move v7, v9

    .line 936
    :goto_1fb
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a6

    .line 920
    :cond_1fe
    if-eqz v15, :cond_210

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    aget-wide v8, v8, v4

    sub-long/2addr v8, v12

    long-to-double v8, v8

    sub-long v10, v20, v12

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    mul-float v8, v8, v18

    goto :goto_1c3

    .line 921
    :cond_210
    int-to-float v8, v4

    mul-float v8, v8, v18

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_1c3

    .line 931
    :cond_222
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    invoke-virtual {v10, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 932
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    invoke-virtual {v10, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1fb

    .line 938
    :cond_231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    add-float v5, v6, v19

    move/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    add-float v5, v6, v19

    invoke-virtual {v4, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 941
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v7, 0x0

    add-float v8, v6, v19

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v9, :cond_2ff

    const/16 v9, 0x46

    :goto_26d
    invoke-static {v10, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    const/4 v11, 0x0

    .line 943
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v10

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 942
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v4, :cond_303

    const v4, 0x3fe66666    # 1.8f

    :goto_2af
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 950
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 952
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-nez v4, :cond_37c

    .line 953
    const/4 v4, 0x0

    :goto_2e9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v5, v5

    if-ge v4, v5, :cond_37c

    .line 954
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    aget-wide v8, v5, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_307

    .line 953
    :goto_2fc
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e9

    .line 942
    :cond_2ff
    const/16 v9, 0x5a

    goto/16 :goto_26d

    .line 947
    :cond_303
    const v4, 0x40266666    # 2.6f

    goto :goto_2af

    .line 957
    :cond_307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v5, v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_358

    move/from16 v5, v18

    .line 958
    :goto_311
    add-float/2addr v5, v14

    .line 959
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    aget-wide v8, v7, v4

    sub-double v8, v24, v8

    sub-double v10, v24, v22

    div-double/2addr v8, v10

    double-to-float v7, v8

    mul-float v7, v7, v19

    add-float/2addr v7, v6

    .line 960
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 961
    const/high16 v8, 0x40900000    # 4.5f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 963
    const/high16 v8, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2fc

    .line 957
    :cond_358
    if-eqz v15, :cond_36a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    aget-wide v8, v5, v4

    sub-long/2addr v8, v12

    long-to-double v8, v8

    sub-long v10, v20, v12

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-float v5, v8

    mul-float v5, v5, v18

    goto :goto_311

    .line 958
    :cond_36a
    int-to-float v5, v4

    mul-float v5, v5, v18

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    goto :goto_311

    .line 966
    :cond_37c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 967
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v4, :cond_4cc

    const v4, 0x40333333    # 2.8f

    :goto_390
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 968
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-nez v4, :cond_ce

    .line 969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-wide v12, v11, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->unit:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/high16 v4, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float v10, v17, v4

    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float v11, v16, v4

    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v7, p1

    move-object/from16 v13, p0

    invoke-static/range {v7 .. v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 976
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "d.MM"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v5, v5

    if-lez v5, :cond_4c1

    .line 978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    const/4 v9, 0x0

    aget-wide v10, v7, v9

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float v11, v5, v7

    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v7, p1

    move v10, v14

    move-object/from16 v13, p0

    invoke-static/range {v7 .. v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    aget-wide v10, v7, v9

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    add-float v10, v14, v18

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float v11, v4, v5

    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v7, p1

    move-object/from16 v13, p0

    invoke-static/range {v7 .. v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 983
    :cond_4c1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->drawPick(Landroid/graphics/Canvas;FF)V

    goto/16 :goto_ce

    .line 967
    :cond_4cc
    const/high16 v4, 0x40c00000    # 6.0f

    goto/16 :goto_390

    :cond_4d0
    move-wide v6, v8

    goto/16 :goto_26
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 787
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    array-length v1, v1

    if-nez v1, :cond_13

    .line 788
    :cond_e
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 823
    :cond_12
    :goto_12
    return v5

    .line 790
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 791
    if-nez v1, :cond_26

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->downX:F

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->downY:F

    goto :goto_12

    .line 796
    :cond_26
    if-ne v1, v5, :cond_aa

    .line 797
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    .line 798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->downX:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v4, v1, v6

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->downY:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v6

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_12

    .line 802
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    move v2, v3

    .line 803
    :goto_5d
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    array-length v4, v4

    if-ge v0, v4, :cond_95

    .line 804
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 803
    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 807
    :cond_6f
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->px:[F

    aget v4, v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x3eb33333    # 0.35f

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->py:[F

    aget v7, v7, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 808
    cmpg-float v6, v4, v1

    if-gez v6, :cond_6c

    move v1, v4

    move v2, v0

    .line 810
    goto :goto_6c

    .line 813
    :cond_95
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    if-ne v2, v0, :cond_a8

    :goto_99
    iput v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    .line 814
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    if-ltz v0, :cond_a3

    .line 816
    const/4 v0, 0x1

    :try_start_a0
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->performHapticFeedback(I)Z
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_b7

    .line 820
    :cond_a3
    :goto_a3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->invalidate()V

    goto/16 :goto_12

    :cond_a8
    move v3, v2

    .line 813
    goto :goto_99

    .line 823
    :cond_aa
    const/4 v2, 0x2

    if-eq v1, v2, :cond_b3

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_b4

    :cond_b3
    move v0, v5

    :cond_b4
    move v5, v0

    goto/16 :goto_12

    .line 817
    :catch_b7
    move-exception v0

    goto :goto_a3
.end method

.method public set([D[JILjava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 777
    if-eqz p1, :cond_16

    :goto_3
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    .line 778
    if-eqz p2, :cond_19

    :goto_7
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    .line 779
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    .line 780
    if-eqz p4, :cond_1c

    :goto_d
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->unit:Ljava/lang/String;

    .line 781
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->sel:I

    .line 782
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->invalidate()V

    .line 783
    return-void

    .line 777
    :cond_16
    new-array p1, v0, [D

    goto :goto_3

    .line 778
    :cond_19
    new-array p2, v0, [J

    goto :goto_7

    .line 780
    :cond_1c
    const-string p4, ""

    goto :goto_d
.end method
