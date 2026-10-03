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

.field final line:Landroid/graphics/Path;

.field final p:Landroid/graphics/Paint;

.field t:[J

.field unit:Ljava/lang/String;

.field v:[D


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 733
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 723
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    .line 724
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    .line 725
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    .line 726
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    .line 727
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    .line 728
    const v0, -0xdd3aa2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    .line 729
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->unit:Ljava/lang/String;

    .line 734
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    .line 735
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 27

    .prologue
    .line 747
    const/4 v8, 0x0

    .line 748
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v2, -0x10000000000001L

    .line 749
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v11, v10

    const/4 v4, 0x0

    move v9, v4

    :goto_12
    if-ge v9, v11, :cond_2a

    aget-wide v12, v10, v9

    .line 750
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_46a

    .line 751
    add-int/lit8 v8, v8, 0x1

    .line 752
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 753
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 749
    :goto_26
    add-int/lit8 v9, v9, 0x1

    move-wide v6, v4

    goto :goto_12

    .line 756
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v4, :cond_c9

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move v10, v4

    .line 757
    :goto_39
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v4, :cond_d4

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move v5, v4

    .line 758
    :goto_48
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v4, :cond_df

    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    .line 759
    :goto_56
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v9, :cond_e9

    const/high16 v9, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    .line 760
    :goto_64
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v10

    sub-float v16, v11, v5

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    sub-float v17, v5, v9

    .line 761
    if-eqz v8, :cond_80

    const/4 v5, 0x0

    cmpg-float v5, v16, v5

    if-lez v5, :cond_80

    const/4 v5, 0x0

    cmpg-float v5, v17, v5

    if-gtz v5, :cond_f3

    .line 762
    :cond_80
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-nez v2, :cond_c8

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 766
    const-string v2, "\u0433\u0440\u0430\u0444\u0438\u043a\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v3, "the chart starts with the second measurement"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 846
    :cond_c8
    :goto_c8
    return-void

    .line 756
    :cond_c9
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move v10, v4

    goto/16 :goto_39

    .line 757
    :cond_d4
    const/high16 v4, 0x42380000    # 46.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move v5, v4

    goto/16 :goto_48

    .line 758
    :cond_df
    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    goto/16 :goto_56

    .line 759
    :cond_e9
    const/high16 v9, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    goto/16 :goto_64

    .line 770
    :cond_f3
    sub-double v8, v2, v6

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v18, 0x3f947ae147ae147bL    # 0.02

    mul-double v14, v14, v18

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 771
    const-wide v12, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v12, v8

    sub-double v20, v6, v12

    .line 772
    const-wide v6, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v6, v8

    add-double v22, v2, v6

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v2, v2

    if-lez v2, :cond_174

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-wide v12, v2

    :goto_129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v2, v2

    if-lez v2, :cond_178

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    move-wide/from16 v18, v2

    .line 774
    :goto_13f
    cmp-long v2, v18, v12

    if-lez v2, :cond_17d

    const/4 v2, 0x1

    move v11, v2

    .line 775
    :goto_145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 777
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 778
    const/4 v3, 0x0

    .line 779
    const/4 v2, 0x0

    move v14, v6

    move v15, v7

    :goto_15a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v6, v6

    if-ge v2, v6, :cond_1eb

    .line 780
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_180

    move v6, v14

    move v7, v15

    .line 779
    :goto_16f
    add-int/lit8 v2, v2, 0x1

    move v14, v6

    move v15, v7

    goto :goto_15a

    .line 773
    :cond_174
    const-wide/16 v2, 0x0

    move-wide v12, v2

    goto :goto_129

    :cond_178
    const-wide/16 v2, 0x1

    move-wide/from16 v18, v2

    goto :goto_13f

    .line 774
    :cond_17d
    const/4 v2, 0x0

    move v11, v2

    goto :goto_145

    .line 783
    :cond_180
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1b8

    move/from16 v6, v16

    .line 784
    :goto_18a
    add-float v7, v10, v6

    .line 785
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    aget-wide v8, v6, v2

    sub-double v8, v22, v8

    sub-double v14, v22, v20

    div-double/2addr v8, v14

    double-to-float v6, v8

    mul-float v6, v6, v17

    add-float/2addr v6, v4

    .line 786
    if-nez v3, :cond_1dc

    .line 787
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 788
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    add-float v8, v4, v17

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move v5, v7

    .line 797
    :goto_1b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_16f

    .line 783
    :cond_1b8
    if-eqz v11, :cond_1ca

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    aget-wide v6, v6, v2

    sub-long/2addr v6, v12

    long-to-double v6, v6

    sub-long v8, v18, v12

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-float v6, v6

    mul-float v6, v6, v16

    goto :goto_18a

    .line 784
    :cond_1ca
    int-to-float v6, v2

    mul-float v6, v6, v16

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    goto :goto_18a

    .line 792
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 793
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1b5

    .line 799
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    add-float v3, v4, v17

    invoke-virtual {v2, v15, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    add-float v3, v4, v17

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v5, 0x0

    add-float v6, v4, v17

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v7, :cond_2b7

    const/16 v7, 0x46

    :goto_225
    invoke-static {v8, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    const/4 v9, 0x0

    .line 804
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 803
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->area:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v2, :cond_2bb

    const v2, 0x3fe66666    # 1.8f

    :goto_267
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->line:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 813
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-nez v2, :cond_334

    .line 814
    const/4 v2, 0x0

    :goto_2a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v3, v3

    if-ge v2, v3, :cond_334

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    aget-wide v6, v3, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2bf

    .line 814
    :goto_2b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a1

    .line 803
    :cond_2b7
    const/16 v7, 0x5a

    goto/16 :goto_225

    .line 808
    :cond_2bb
    const v2, 0x40266666    # 2.6f

    goto :goto_267

    .line 818
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v3, v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_310

    move/from16 v3, v16

    .line 819
    :goto_2c9
    add-float/2addr v3, v10

    .line 820
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    aget-wide v6, v5, v2

    sub-double v6, v22, v6

    sub-double v8, v22, v20

    div-double/2addr v6, v8

    double-to-float v5, v6

    mul-float v5, v5, v17

    add-float/2addr v5, v4

    .line 821
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 822
    const/high16 v6, 0x40900000    # 4.5f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 824
    const/high16 v6, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2b4

    .line 818
    :cond_310
    if-eqz v11, :cond_322

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    aget-wide v6, v3, v2

    sub-long/2addr v6, v12

    long-to-double v6, v6

    sub-long v8, v18, v12

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-float v3, v6

    mul-float v3, v3, v16

    goto :goto_2c9

    .line 819
    :cond_322
    int-to-float v3, v2

    mul-float v3, v3, v16

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    goto :goto_2c9

    .line 827
    :cond_334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 828
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-eqz v2, :cond_466

    const v2, 0x40333333    # 2.8f

    :goto_348
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 829
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->compact:Z

    if-nez v2, :cond_c8

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->unit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    add-float/2addr v3, v15

    const/high16 v4, 0x40a00000    # 5.0f

    .line 834
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    .line 833
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 838
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d.MM"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v3, v3

    if-lez v3, :cond_c8

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 841
    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 843
    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    add-float v3, v10, v16

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_c8

    .line 828
    :cond_466
    const/high16 v2, 0x40c00000    # 6.0f

    goto/16 :goto_348

    :cond_46a
    move-wide v4, v6

    goto/16 :goto_26
.end method

.method public set([D[JILjava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 738
    if-eqz p1, :cond_13

    :goto_3
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->v:[D

    .line 739
    if-eqz p2, :cond_16

    :goto_7
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->t:[J

    .line 740
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->color:I

    .line 741
    if-eqz p4, :cond_19

    :goto_d
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->unit:Ljava/lang/String;

    .line 742
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->invalidate()V

    .line 743
    return-void

    .line 738
    :cond_13
    new-array p1, v0, [D

    goto :goto_3

    .line 739
    :cond_16
    new-array p2, v0, [J

    goto :goto_7

    .line 741
    :cond_19
    const-string p4, ""

    goto :goto_d
.end method
