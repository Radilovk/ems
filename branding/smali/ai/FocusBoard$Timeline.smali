.class final Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;
.super Landroid/view/View;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Timeline"
.end annotation


# instance fields
.field private final bar:Landroid/graphics/Paint;

.field private final big:Landroid/graphics/Paint;

.field private clk:[J

.field private final fill:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/RectF;

.field private run:Z

.field private final small:Landroid/graphics/Paint;

.field private t1:I

.field private t2:I

.field private final tick:Landroid/graphics/Paint;

.field private two:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1869
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1856
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->bar:Landroid/graphics/Paint;

    .line 1857
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->fill:Landroid/graphics/Paint;

    .line 1858
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->tick:Landroid/graphics/Paint;

    .line 1859
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->big:Landroid/graphics/Paint;

    .line 1860
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    .line 1861
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->r:Landroid/graphics/RectF;

    .line 1870
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->tick:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1871
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1872
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->big:Landroid/graphics/Paint;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1873
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1874
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1875
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 1876
    return-void
.end method

.method private seg(Landroid/graphics/Canvas;FFFFIIF)V
    .registers 17

    .prologue
    .line 1953
    const/high16 v0, 0x40000000    # 2.0f

    div-float v7, p5, v0

    .line 1954
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->r:Landroid/graphics/RectF;

    add-float v1, p2, p4

    add-float v2, p3, p5

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1955
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->bar:Landroid/graphics/Paint;

    const/4 v0, 0x0

    cmpl-float v0, p8, v0

    if-ltz v0, :cond_50

    const/16 v0, 0x38

    :goto_16
    invoke-static {p6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1956
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->bar:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1957
    const/4 v0, 0x1

    if-le p7, v0, :cond_53

    const/16 v0, 0x78

    if-gt p7, v0, :cond_53

    .line 1958
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->tick:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    const/16 v2, 0xb0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1959
    const/4 v0, 0x1

    move v6, v0

    :goto_3a
    if-ge v6, p7, :cond_53

    .line 1960
    int-to-float v0, v6

    mul-float/2addr v0, p4

    int-to-float v1, p7

    div-float/2addr v0, v1

    add-float v1, p2, v0

    .line 1961
    add-float v4, p3, p5

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->tick:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1959
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3a

    .line 1955
    :cond_50
    const/16 v0, 0x26

    goto :goto_16

    .line 1964
    :cond_53
    const/4 v0, 0x0

    cmpl-float v0, p8, v0

    if-ltz v0, :cond_a1

    .line 1965
    mul-float v0, p4, p8

    add-float/2addr v0, p2

    .line 1966
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, p2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_75

    .line 1967
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->r:Landroid/graphics/RectF;

    add-float v2, p3, p5

    invoke-virtual {v1, p2, p3, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1968
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1969
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1971
    :cond_75
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->fill:Landroid/graphics/Paint;

    const/16 v2, 0x45

    invoke-static {p6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1972
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p5, v1

    add-float/2addr v1, p3

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v2, p5

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1973
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->fill:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1974
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p5, v1

    add-float/2addr v1, p3

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, p5

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1976
    :cond_a1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    .prologue
    .line 1889
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->getWidth()I

    move-result v2

    int-to-float v0, v2

    move/from16 v22, v0

    .line 1890
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1891
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v4, v3

    .line 1892
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v7, v3

    .line 1893
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 1894
    sub-float/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    .line 1895
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t1:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t2:I

    add-int/2addr v6, v2

    .line 1896
    if-lez v6, :cond_4b

    const/4 v2, 0x0

    cmpg-float v2, v22, v2

    if-gtz v2, :cond_4c

    .line 1949
    :cond_4b
    :goto_4b
    return-void

    .line 1899
    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->two:Z

    if-eqz v2, :cond_1a0

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1900
    :goto_54
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t2:I

    if-lez v2, :cond_1a4

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 1901
    :goto_5d
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    sub-float v8, v22, v2

    if-eqz v21, :cond_1a9

    move v2, v3

    :goto_65
    sub-float v2, v8, v2

    .line 1902
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t1:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    int-to-float v6, v6

    div-float v6, v8, v6

    .line 1904
    add-float v8, v4, v6

    add-float v20, v8, v3

    .line 1905
    sub-float v12, v2, v6

    .line 1908
    const/4 v9, -0x1

    .line 1909
    const/4 v8, 0x0

    .line 1910
    const-wide/16 v2, 0x0

    .line 1911
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->run:Z

    if-eqz v10, :cond_25f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->clk:[J

    if-eqz v10, :cond_25f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->clk:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-lez v10, :cond_25f

    .line 1912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->clk:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v8, 0x1

    cmp-long v2, v2, v8

    if-nez v2, :cond_1ac

    const/4 v2, 0x0

    .line 1913
    :goto_a1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->clk:[J

    const/4 v10, 0x1

    aget-wide v10, v3, v10

    sub-long/2addr v8, v10

    .line 1914
    const/4 v3, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    long-to-float v11, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->clk:[J

    const/4 v15, 0x2

    aget-wide v16, v13, v15

    move-wide/from16 v0, v16

    long-to-float v13, v0

    div-float/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1915
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->clk:[J

    const/4 v15, 0x2

    aget-wide v16, v13, v15

    sub-long v8, v16, v8

    const-wide/16 v16, 0x3e7

    add-long v8, v8, v16

    const-wide/16 v16, 0x3e8

    div-long v8, v8, v16

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide/from16 v18, v8

    move v11, v3

    move/from16 v17, v2

    .line 1918
    :goto_e0
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t1:I

    if-nez v17, :cond_1af

    move v10, v11

    :goto_e9
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->seg(Landroid/graphics/Canvas;FFFFIIF)V

    .line 1919
    if-eqz v21, :cond_108

    .line 1920
    move-object/from16 v0, p0

    iget v15, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t2:I

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1b3

    move/from16 v16, v11

    :goto_fd
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, v20

    move v11, v5

    move v13, v7

    invoke-direct/range {v8 .. v16}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->seg(Landroid/graphics/Canvas;FFFFIIF)V

    .line 1924
    :cond_108
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    .line 1925
    if-nez v17, :cond_1b7

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 1927
    :cond_118
    :goto_118
    if-nez v17, :cond_1c0

    .line 1928
    const-string v2, "\u0418\u041c\u041f\u0423\u041b\u0421 1"

    const-string v3, "IMPULSE 1"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1934
    :goto_122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1936
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_1f9

    move/from16 v3, v20

    .line 1937
    :goto_139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u25cf  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->big:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1939
    if-ltz v17, :cond_1fc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1940
    :goto_174
    if-ltz v17, :cond_240

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->big:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1942
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_23c

    add-float v2, v20, v12

    :goto_186
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->big:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1943
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->postInvalidateOnAnimation()V

    goto/16 :goto_4b

    .line 1899
    :cond_1a0
    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_54

    .line 1900
    :cond_1a4
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_5d

    .line 1901
    :cond_1a9
    const/4 v2, 0x0

    goto/16 :goto_65

    .line 1912
    :cond_1ac
    const/4 v2, 0x1

    goto/16 :goto_a1

    .line 1918
    :cond_1af
    const/high16 v10, -0x40800000    # -1.0f

    goto/16 :goto_e9

    .line 1920
    :cond_1b3
    const/high16 v16, -0x40800000    # -1.0f

    goto/16 :goto_fd

    .line 1925
    :cond_1b7
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_118

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_118

    .line 1929
    :cond_1c0
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1df

    .line 1930
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->two:Z

    if-eqz v2, :cond_1d5

    const-string v2, "\u0418\u041c\u041f\u0423\u041b\u0421 2"

    const-string v3, "IMPULSE 2"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_122

    :cond_1d5
    const-string v2, "\u041f\u0410\u0423\u0417\u0410"

    const-string v3, "PAUSE"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_122

    .line 1932
    :cond_1df
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->run:Z

    if-eqz v2, :cond_1ef

    const-string v2, "\u0422\u0420\u0415\u041d\u0418\u0420\u041e\u0412\u041a\u0410"

    const-string v3, "TRAINING"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_122

    :cond_1ef
    const-string v2, "\u0426\u0418\u041a\u042a\u041b"

    const-string v3, "CYCLE"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_122

    :cond_1f9
    move v3, v4

    .line 1936
    goto/16 :goto_139

    .line 1939
    :cond_1fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v21, :cond_239

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  +  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t2:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " s"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_22e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_174

    :cond_239
    const-string v2, ""

    goto :goto_22e

    .line 1942
    :cond_23c
    add-float v2, v4, v6

    goto/16 :goto_186

    .line 1945
    :cond_240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1947
    sub-float v2, v22, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->small:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    :cond_25f
    move-wide/from16 v18, v2

    move v11, v8

    move/from16 v17, v9

    goto/16 :goto_e0
.end method

.method set(Z[JIIZ)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1879
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->run:Z

    .line 1880
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->clk:[J

    .line 1881
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t1:I

    .line 1882
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->t2:I

    .line 1883
    iput-boolean p5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->two:Z

    .line 1884
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->invalidate()V

    .line 1885
    return-void
.end method
