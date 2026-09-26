.class public final Lcom/isaigu/gymapp/wearable/HrChartView;
.super Landroid/view/View;
.source "HrChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/HrChartView$XemsUiText;
    }
.end annotation


# instance fields
.field private final area:Landroid/graphics/Path;

.field private final band:Landroid/graphics/Paint;

.field private final bubble:Landroid/graphics/Paint;

.field private cap:I

.field private data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

.field private final dot:Landroid/graphics/Paint;

.field private final fill:Landroid/graphics/Paint;

.field private final guide:Landroid/graphics/Paint;

.field private final label:Landroid/graphics/Paint;

.field private limit:I

.field private final line:Landroid/graphics/Paint;

.field private nowMs:J

.field private final path:Landroid/graphics/Path;

.field private final r:Landroid/graphics/RectF;

.field private rest:I

.field private scrubX:F

.field private windowMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->fill:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->band:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->path:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->r:Landroid/graphics/RectF;

    .line 38
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->windowMs:J

    .line 39
    const/16 v0, 0xaa

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    .line 42
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    const v2, 0x40266666    # 2.6f

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 49
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 52
    const/4 v3, 0x2

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 54
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 57
    return-void
.end method

.method private closeArea(Landroid/graphics/Canvas;FFFF)V
    .registers 14

    .line 217
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {p3, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 219
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->fill:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/LinearGradient;

    .line 220
    const v0, -0x47400

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p4

    move v2, p5

    move v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 219
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 221
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 222
    return-void
.end method

.method private dp(F)F
    .registers 3

    .line 70
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private draw0(Landroid/graphics/Canvas;)V
    .registers 34

    .line 100
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getHeight()I

    move-result v1

    int-to-float v14, v1

    .line 102
    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {v12, v1}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v15

    .line 103
    const/high16 v1, 0x42080000    # 34.0f

    invoke-direct {v12, v1}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v1

    sub-float v16, v0, v1

    .line 104
    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {v12, v0}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v11

    .line 105
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-direct {v12, v0}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v0

    sub-float v10, v14, v0

    .line 106
    sub-float v17, v16, v15

    const/high16 v0, 0x42200000    # 40.0f

    invoke-direct {v12, v0}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v1

    cmpg-float v1, v17, v1

    if-ltz v1, :cond_3a5

    sub-float v1, v10, v11

    invoke-direct {v12, v0}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_42

    goto/16 :goto_3a5

    .line 109
    :cond_42
    iget-wide v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->windowMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4b

    goto :goto_4e

    :cond_4b
    const-wide/32 v0, 0x36ee80

    .line 110
    :goto_4e
    iget-wide v4, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->nowMs:J

    sub-long/2addr v4, v0

    .line 111
    iget-wide v6, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->windowMs:J

    const-wide/32 v8, 0xea60

    const/16 v18, 0x0

    cmp-long v19, v6, v2

    if-gtz v19, :cond_77

    iget-object v2, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    if-eqz v2, :cond_77

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_77

    .line 112
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v1, v0, v18

    .line 113
    iget-wide v3, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->nowMs:J

    sub-long/2addr v3, v1

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-wide/from16 v19, v1

    move-wide v6, v3

    goto :goto_7a

    .line 117
    :cond_77
    move-wide v6, v0

    move-wide/from16 v19, v4

    :goto_7a
    nop

    .line 118
    iget v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->cap:I

    const/16 v21, 0xa

    const/16 v5, 0x14

    if-lez v0, :cond_86

    add-int/lit8 v0, v0, 0xa

    goto :goto_89

    :cond_86
    iget v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    add-int/2addr v0, v5

    :goto_89
    const/16 v1, 0x78

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 119
    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    const/16 v4, 0x28

    const/4 v3, 0x5

    if-eqz v1, :cond_b5

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v1

    if-lez v1, :cond_b5

    .line 120
    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->min()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 121
    iget-object v2, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    goto :goto_b8

    .line 123
    :cond_b5
    move v2, v0

    const/16 v1, 0x28

    :goto_b8
    const/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 126
    const/4 v0, 0x6

    new-array v8, v0, [F

    fill-array-data v8, :array_3a6

    .line 127
    const/4 v9, 0x1

    :goto_c5
    if-gt v9, v3, :cond_11b

    .line 128
    iget v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    int-to-float v0, v0

    add-int/lit8 v26, v9, -0x1

    aget v26, v8, v26

    mul-float v0, v0, v26

    invoke-static {v0, v1, v2, v11, v10}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v0

    .line 129
    iget v3, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    int-to-float v3, v3

    aget v27, v8, v9

    mul-float v3, v3, v27

    invoke-static {v3, v1, v2, v11, v10}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v3

    .line 130
    iget-object v4, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->band:Landroid/graphics/Paint;

    move/from16 v28, v1

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v1

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->band:Landroid/graphics/Paint;

    const/4 v13, 0x6

    move-object/from16 v0, p1

    move/from16 v25, v28

    move-object/from16 v28, v1

    move v1, v15

    move/from16 v29, v2

    move v2, v3

    move/from16 v3, v16

    const/16 v26, 0x14

    move-object/from16 v5, v28

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v13, p1

    move/from16 v1, v25

    move/from16 v2, v29

    const/4 v0, 0x6

    const/4 v3, 0x5

    const/16 v4, 0x28

    const/16 v5, 0x14

    goto :goto_c5

    .line 134
    :cond_11b
    move/from16 v25, v1

    move/from16 v29, v2

    const/4 v13, 0x6

    iget v2, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->rest:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v26, 0x0

    const-string v27, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v25

    move/from16 v4, v29

    move v5, v11

    move-wide v7, v6

    move v6, v10

    move/from16 v28, v14

    move-wide v13, v7

    move v7, v15

    const-wide/32 v22, 0xea60

    move/from16 v8, v16

    move/from16 v24, v10

    move-object/from16 v10, v27

    move/from16 v27, v11

    move/from16 v11, v26

    invoke-direct/range {v0 .. v11}, Lcom/isaigu/gymapp/wearable/HrChartView;->drawGuide(Landroid/graphics/Canvas;IIIFFFFILjava/lang/String;Z)V

    .line 135
    iget v2, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    const v9, -0x47400

    const/4 v11, 0x1

    const-string v10, ""

    move/from16 v5, v27

    move/from16 v6, v24

    invoke-direct/range {v0 .. v11}, Lcom/isaigu/gymapp/wearable/HrChartView;->drawGuide(Landroid/graphics/Canvas;IIIFFFFILjava/lang/String;Z)V

    .line 136
    iget v2, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->cap:I

    if-lez v2, :cond_172

    .line 137
    const v9, -0x1ac6cb

    const/4 v11, 0x1

    const-string v10, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v25

    move/from16 v4, v29

    move/from16 v5, v27

    move/from16 v6, v24

    move v7, v15

    move/from16 v8, v16

    invoke-direct/range {v0 .. v11}, Lcom/isaigu/gymapp/wearable/HrChartView;->drawGuide(Landroid/graphics/Canvas;IIIFFFFILjava/lang/String;Z)V

    .line 141
    :cond_172
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const-wide/16 v0, 0x1

    div-long v6, v13, v22

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 143
    const/4 v0, 0x6

    if-gt v1, v0, :cond_188

    const/16 v21, 0x1

    goto :goto_196

    :cond_188
    const/16 v0, 0x10

    if-gt v1, v0, :cond_18f

    const/16 v21, 0x5

    goto :goto_196

    :cond_18f
    const/16 v0, 0x28

    if-gt v1, v0, :cond_194

    goto :goto_196

    :cond_194
    const/16 v21, 0xf

    .line 144
    :goto_196
    const/4 v0, 0x0

    :goto_197
    const/high16 v9, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_1d9

    .line 145
    int-to-float v2, v0

    const v3, 0x476a6000    # 60000.0f

    mul-float v2, v2, v3

    long-to-float v3, v13

    div-float/2addr v2, v3

    mul-float v2, v2, v17

    sub-float v2, v16, v2

    .line 146
    if-nez v0, :cond_1ae

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrChartView$XemsUiText;->now()Ljava/lang/String;

    move-result-object v3

    goto :goto_1bf

    :cond_1ae
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2212"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    :goto_1bf
    iget-object v4, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v4, v9

    sub-float/2addr v2, v4

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {v12, v4}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v4

    sub-float v4, v28, v4

    iget-object v5, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual {v10, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    add-int v0, v0, v21

    goto :goto_197

    .line 150
    :cond_1d9
    move-object/from16 v10, p1

    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    if-eqz v0, :cond_382

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v0

    if-nez v0, :cond_1e9

    move/from16 v9, v27

    goto/16 :goto_384

    .line 158
    :cond_1e9
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 159
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 164
    const/4 v0, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1fd
    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v1

    if-ge v6, v1, :cond_2ae

    .line 165
    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v4, v1, v6

    .line 166
    cmp-long v1, v4, v19

    if-gez v1, :cond_21d

    .line 167
    move v7, v8

    move v9, v11

    move-wide/from16 v22, v13

    move/from16 v8, v24

    move/from16 v14, v25

    move/from16 v11, v27

    move/from16 v13, v29

    goto/16 :goto_29c

    .line 169
    :cond_21d
    sub-long v4, v4, v19

    long-to-float v1, v4

    long-to-float v2, v13

    div-float/2addr v1, v2

    mul-float v1, v1, v17

    add-float v7, v15, v1

    .line 170
    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v1, v1, v6

    int-to-float v1, v1

    move/from16 v5, v24

    move/from16 v4, v25

    move/from16 v11, v27

    move/from16 v2, v29

    invoke-static {v1, v4, v2, v11, v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v1

    .line 171
    if-lez v6, :cond_253

    iget-object v9, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v9, v9, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v22, v9, v6

    iget-object v9, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v9, v9, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    add-int/lit8 v24, v6, -0x1

    aget-wide v24, v9, v24

    sub-long v22, v22, v24

    const-wide/16 v24, 0x2ee0

    cmp-long v9, v22, v24

    if-lez v9, :cond_253

    const/4 v9, 0x1

    goto :goto_254

    :cond_253
    const/4 v9, 0x0

    .line 172
    :goto_254
    if-eqz v0, :cond_26a

    if-eqz v9, :cond_259

    goto :goto_26a

    .line 183
    :cond_259
    iget-object v8, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 184
    iget-object v8, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move v9, v1

    move v8, v5

    move-wide/from16 v22, v13

    move v13, v2

    move v14, v4

    goto :goto_29a

    .line 173
    :cond_26a
    :goto_26a
    if-eqz v0, :cond_282

    .line 174
    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p1

    move-wide/from16 v22, v13

    move v13, v2

    move v2, v5

    move v14, v4

    move v4, v8

    move v8, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->closeArea(Landroid/graphics/Canvas;FFFF)V

    .line 175
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_288

    .line 173
    :cond_282
    move v9, v1

    move v8, v5

    move-wide/from16 v22, v13

    move v13, v2

    move v14, v4

    .line 177
    :goto_288
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    nop

    .line 181
    move v3, v7

    const/4 v0, 0x1

    .line 186
    :goto_29a
    nop

    .line 187
    nop

    .line 164
    :goto_29c
    add-int/lit8 v6, v6, 0x1

    move/from16 v24, v8

    move/from16 v27, v11

    move/from16 v29, v13

    move/from16 v25, v14

    move-wide/from16 v13, v22

    move v8, v7

    move v11, v9

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_1fd

    .line 189
    :cond_2ae
    move-wide/from16 v22, v13

    move/from16 v14, v25

    move/from16 v9, v27

    move/from16 v13, v29

    if-nez v0, :cond_2b9

    .line 190
    return-void

    .line 192
    :cond_2b9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move v4, v8

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->closeArea(Landroid/graphics/Canvas;FFFF)V

    .line 193
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->last()I

    move-result v0

    iget v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v0

    .line 194
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v0

    .line 195
    iget-object v7, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x5

    new-array v5, v1, [I

    fill-array-data v5, :array_3b6

    .line 198
    invoke-direct {v12, v14, v13}, Lcom/isaigu/gymapp/wearable/HrChartView;->gradientStops(II)[F

    move-result-object v17

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v6

    move v3, v9

    move-object/from16 v25, v5

    move/from16 v5, v24

    move-object/from16 v30, v6

    move-object/from16 v6, v25

    move-object/from16 v31, v7

    move-object/from16 v7, v17

    move/from16 v29, v13

    move v13, v8

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 195
    move-object/from16 v2, v30

    move-object/from16 v1, v31

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 199
    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->path:Landroid/graphics/Path;

    iget-object v2, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x4b0

    rem-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x44960000    # 1200.0f

    div-float/2addr v1, v2

    .line 203
    iget-object v2, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    const/high16 v3, 0x42e00000    # 112.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v12, v2}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v3

    const/high16 v4, 0x41100000    # 9.0f

    invoke-direct {v12, v4}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v4

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    invoke-virtual {v10, v13, v11, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 205
    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    invoke-direct {v12, v2}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v0

    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    invoke-virtual {v10, v13, v11, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 207
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {v12, v0}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v0

    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    invoke-virtual {v10, v13, v11, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    const-wide/16 v0, 0x3c

    invoke-virtual {v12, v0, v1}, Lcom/isaigu/gymapp/wearable/HrChartView;->postInvalidateDelayed(J)V

    .line 211
    iget v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    cmpl-float v1, v0, v15

    if-ltz v1, :cond_381

    cmpg-float v0, v0, v16

    if-gtz v0, :cond_381

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    move-wide/from16 v4, v22

    move v6, v15

    move/from16 v7, v16

    move v8, v9

    move/from16 v9, v24

    move v10, v14

    move/from16 v11, v29

    invoke-direct/range {v0 .. v11}, Lcom/isaigu/gymapp/wearable/HrChartView;->drawScrub(Landroid/graphics/Canvas;JJFFFFII)V

    .line 214
    :cond_381
    return-void

    .line 150
    :cond_382
    move/from16 v9, v27

    .line 151
    :goto_384
    iget-object v0, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrChartView$XemsUiText;->waiting()Ljava/lang/String;

    move-result-object v0

    .line 153
    add-float v15, v15, v16

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v15, v1

    iget-object v2, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v15, v2

    add-float v11, v9, v24

    div-float/2addr v11, v1

    iget-object v1, v12, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    invoke-virtual {v10, v0, v15, v11, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 154
    return-void

    .line 107
    :cond_3a5
    :goto_3a5
    return-void

    :array_3a6
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x41200000    # 10.0f
    .end array-data

    :array_3b6
    .array-data 4
        -0x1ac6cb
        -0x47400
        -0x227cb
        -0xbc5fb9
        -0x6f5b52
    .end array-data
.end method

.method private drawGuide(Landroid/graphics/Canvas;IIIFFFFILjava/lang/String;Z)V
    .registers 24

    .line 271
    move-object v0, p0

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p9

    if-lez v1, :cond_6f

    if-lt v1, v2, :cond_6f

    if-le v1, v3, :cond_e

    goto :goto_6f

    .line 274
    :cond_e
    int-to-float v5, v1

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static {v5, p3, v3, v6, v7}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v2

    .line 275
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    const/16 v5, 0xaa

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    const/high16 v5, 0x40a00000    # 5.0f

    if-eqz p11, :cond_42

    new-instance v6, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-direct {p0, v9}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    goto :goto_43

    :cond_42
    const/4 v6, 0x0

    :goto_43
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 277
    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    move-object v6, p1

    move/from16 v7, p7

    move v8, v2

    move/from16 v9, p8

    move v10, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 278
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v3

    add-float v3, p8, v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v4

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    return-void

    .line 272
    :cond_6f
    :goto_6f
    return-void
.end method

.method private drawScrub(Landroid/graphics/Canvas;JJFFFFII)V
    .registers 29

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p6

    move/from16 v9, p8

    iget v1, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    sub-float/2addr v1, v8

    sub-float v2, p7, v8

    div-float/2addr v1, v2

    move-wide/from16 v3, p4

    long-to-float v3, v3

    mul-float v1, v1, v3

    float-to-long v4, v1

    add-long v4, p2, v4

    .line 238
    nop

    .line 239
    nop

    .line 240
    const/4 v10, 0x0

    const/4 v1, -0x1

    const-wide v11, 0x7fffffffffffffffL

    move-wide v12, v11

    const/4 v1, 0x0

    const/4 v11, -0x1

    :goto_22
    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v6

    if-ge v1, v6, :cond_3f

    .line 241
    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v6, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v14, v6, v1

    sub-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 242
    cmp-long v6, v14, v12

    if-gez v6, :cond_3c

    .line 243
    nop

    .line 244
    move v11, v1

    move-wide v12, v14

    .line 240
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 247
    :cond_3f
    if-ltz v11, :cond_14d

    const-wide/16 v4, 0x7530

    cmp-long v1, v12, v4

    if-lez v1, :cond_49

    goto/16 :goto_14d

    .line 250
    :cond_49
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v4, v1, v11

    sub-long v4, v4, p2

    long-to-float v1, v4

    div-float/2addr v1, v3

    mul-float v1, v1, v2

    add-float v12, v8, v1

    .line 251
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v1, v1, v11

    int-to-float v1, v1

    move/from16 v5, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-static {v1, v2, v3, v9, v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v13

    .line 252
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x66

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 254
    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, p8

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v1, v1, v11

    iget v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v1

    .line 256
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v3

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v13, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 258
    const-wide/16 v3, 0x0

    iget-wide v5, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->nowMs:J

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v13, v13, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v14, v13, v11

    sub-long/2addr v5, v14

    const-wide/16 v13, 0x3e8

    div-long/2addr v5, v13

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v6, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  \u00b7  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-wide/16 v13, 0x3c

    div-long v15, v3, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v11, v10

    rem-long/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v11, v2

    const-string v2, "\u2212%d:%02d"

    invoke-static {v6, v2, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 261
    sub-float v4, p7, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    sub-float/2addr v12, v5

    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 262
    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->r:Landroid/graphics/RectF;

    add-float/2addr v3, v4

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-direct {v0, v6}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v6

    add-float/2addr v6, v9

    invoke-virtual {v5, v4, v9, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 263
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->r:Landroid/graphics/RectF;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {v0, v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v6

    invoke-direct {v0, v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v5

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 265
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v1

    add-float/2addr v4, v1

    const/high16 v1, 0x41980000    # 19.0f

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v1

    add-float/2addr v1, v9

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    return-void

    .line 248
    :cond_14d
    :goto_14d
    return-void
.end method

.method private gradientStops(II)[F
    .registers 11

    .line 226
    const/4 v0, 0x4

    new-array v1, v0, [F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    int-to-float v3, v2

    const v4, 0x3f666666    # 0.9f

    mul-float v3, v3, v4

    const/4 v4, 0x0

    aput v3, v1, v4

    int-to-float v3, v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v3, v3, v5

    const/4 v5, 0x1

    aput v3, v1, v5

    int-to-float v3, v2

    const v5, 0x3f333333    # 0.7f

    mul-float v3, v3, v5

    const/4 v5, 0x2

    aput v3, v1, v5

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float v2, v2, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 227
    const/4 v2, 0x5

    new-array v2, v2, [F

    .line 228
    const/4 v3, 0x0

    aput v3, v2, v4

    .line 229
    nop

    :goto_30
    if-ge v4, v0, :cond_4c

    .line 230
    add-int/lit8 v3, v4, 0x1

    aget v5, v2, v4

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, p2

    aget v4, v1, v4

    sub-float/2addr v7, v4

    sub-int v4, p2, p1

    int-to-float v4, v4

    div-float/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v2, v3

    .line 229
    move v4, v3

    goto :goto_30

    .line 232
    :cond_4c
    return-object v2
.end method

.method private static yOf(FIIFF)F
    .registers 6

    .line 283
    int-to-float v0, p1

    sub-float/2addr p0, v0

    sub-int/2addr p2, p1

    const/4 p1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 284
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sub-float p1, p4, p3

    mul-float p0, p0, p1

    sub-float/2addr p4, p0

    return p4
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 93
    :try_start_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/HrChartView;->draw0(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 96
    goto :goto_a

    .line 94
    :catchall_4
    move-exception p1

    .line 95
    const-string v0, "HrChartView.onDraw"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :goto_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 76
    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    goto :goto_1e

    .line 82
    :cond_b
    if-eq v0, v1, :cond_16

    const/4 v2, 0x3

    if-ne v0, v2, :cond_11

    goto :goto_16

    .line 87
    :cond_11
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 83
    :cond_16
    :goto_16
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    .line 84
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->invalidate()V

    .line 85
    return v1

    .line 77
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    .line 79
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->invalidate()V

    .line 80
    return v1
.end method

.method public set(Lcom/isaigu/gymapp/wearable/HrHistory$Series;JJIII)V
    .registers 9

    .line 60
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    .line 61
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->nowMs:J

    .line 62
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->windowMs:J

    .line 63
    if-lez p6, :cond_9

    goto :goto_b

    :cond_9
    const/16 p6, 0xaa

    :goto_b
    iput p6, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    .line 64
    iput p7, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->cap:I

    .line 65
    iput p8, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->rest:I

    .line 66
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->invalidate()V

    .line 67
    return-void
.end method
