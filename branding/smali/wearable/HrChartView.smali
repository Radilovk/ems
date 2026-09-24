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

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->fill:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->band:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

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
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->windowMs:J

    .line 39
    const/16 v0, 0xaa

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    .line 42
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 49
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    const v1, 0x3f99999a    # 1.2f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    const/high16 v1, 0x41300000    # 11.0f

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 52
    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 54
    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 57
    return-void
.end method

.method private closeArea(Landroid/graphics/Canvas;FFFF)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v0, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 219
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->fill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const v2, -0x47400

    const/16 v3, 0x38

    .line 220
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, p5

    move v3, v1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 219
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 222
    return-void
.end method

.method private dp(F)F
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private draw0(Landroid/graphics/Canvas;)V
    .registers 32

    .prologue
    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v18, v0

    .line 102
    const/high16 v3, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v3

    .line 103
    const/high16 v4, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v4

    sub-float v5, v2, v4

    .line 104
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v11

    .line 105
    const/high16 v2, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v2

    sub-float v12, v18, v2

    .line 106
    sub-float v2, v5, v3

    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_4c

    sub-float v2, v12, v11

    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4d

    .line 214
    :cond_4c
    :goto_4c
    return-void

    .line 109
    :cond_4d
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->windowMs:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_124

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->windowMs:J

    .line 110
    :goto_5b
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->nowMs:J

    sub-long/2addr v8, v6

    .line 111
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->windowMs:J

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-gtz v2, :cond_3c8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    if-eqz v2, :cond_3c8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_3c8

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    const/4 v4, 0x0

    aget-wide v6, v2, v4

    .line 113
    const-wide/32 v8, 0xea60

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->nowMs:J

    sub-long/2addr v14, v6

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide/from16 v26, v6

    move-wide/from16 v28, v8

    .line 117
    :goto_93
    const/16 v4, 0x28

    .line 118
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->cap:I

    if-lez v2, :cond_129

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->cap:I

    add-int/lit8 v2, v2, 0xa

    :goto_a1
    const/16 v6, 0x78

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    if-eqz v2, :cond_3c5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_3c5

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->min()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 123
    :goto_d3
    const/16 v4, 0x1e

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 126
    const/4 v2, 0x6

    new-array v13, v2, [F

    fill-array-data v13, :array_3ce

    .line 127
    const/4 v2, 0x1

    move v8, v2

    :goto_e1
    const/4 v2, 0x5

    if-gt v8, v2, :cond_131

    .line 128
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    int-to-float v2, v2

    add-int/lit8 v4, v8, -0x1

    aget v4, v13, v4

    mul-float/2addr v2, v4

    invoke-static {v2, v9, v10, v11, v12}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v2

    .line 129
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    int-to-float v4, v4

    aget v6, v13, v8

    mul-float/2addr v4, v6

    invoke-static {v4, v9, v10, v11, v12}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v4

    .line 130
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->band:Landroid/graphics/Paint;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v7

    const/16 v14, 0x14

    invoke-static {v7, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->band:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_e1

    .line 109
    :cond_124
    const-wide/32 v6, 0x36ee80

    goto/16 :goto_5b

    .line 118
    :cond_129
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    add-int/lit8 v2, v2, 0x14

    goto/16 :goto_a1

    .line 134
    :cond_131
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->rest:I

    sget v15, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const-string v16, ""

    const/16 v17, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v13, v3

    move v14, v5

    invoke-direct/range {v6 .. v17}, Lcom/isaigu/gymapp/wearable/HrChartView;->drawGuide(Landroid/graphics/Canvas;IIIFFFFILjava/lang/String;Z)V

    .line 135
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    const v15, -0x47400

    const-string v16, ""

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v13, v3

    move v14, v5

    invoke-direct/range {v6 .. v17}, Lcom/isaigu/gymapp/wearable/HrChartView;->drawGuide(Landroid/graphics/Canvas;IIIFFFFILjava/lang/String;Z)V

    .line 136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->cap:I

    if-lez v2, :cond_172

    .line 137
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->cap:I

    const v15, -0x1ac6cb

    const-string v16, ""

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v13, v3

    move v14, v5

    invoke-direct/range {v6 .. v17}, Lcom/isaigu/gymapp/wearable/HrChartView;->drawGuide(Landroid/graphics/Canvas;IIIFFFFILjava/lang/String;Z)V

    .line 141
    :cond_172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const-wide/16 v6, 0x1

    const-wide/32 v14, 0xea60

    div-long v14, v28, v14

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 143
    const/4 v2, 0x6

    if-gt v7, v2, :cond_1c6

    const/4 v2, 0x1

    .line 144
    :goto_18b
    const/4 v4, 0x0

    move v6, v4

    :goto_18d
    if-gt v6, v7, :cond_1ea

    .line 145
    int-to-float v4, v6

    const v8, 0x476a6000    # 60000.0f

    mul-float/2addr v4, v8

    move-wide/from16 v0, v28

    long-to-float v8, v0

    div-float/2addr v4, v8

    sub-float v8, v5, v3

    mul-float/2addr v4, v8

    sub-float v8, v5, v4

    .line 146
    if-nez v6, :cond_1d6

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrChartView$XemsUiText;->now()Ljava/lang/String;

    move-result-object v4

    .line 147
    :goto_1a3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v8, v13

    const/high16 v13, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v13

    sub-float v13, v18, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    add-int v4, v6, v2

    move v6, v4

    goto :goto_18d

    .line 143
    :cond_1c6
    const/16 v2, 0x10

    if-gt v7, v2, :cond_1cc

    const/4 v2, 0x5

    goto :goto_18b

    :cond_1cc
    const/16 v2, 0x28

    if-gt v7, v2, :cond_1d3

    const/16 v2, 0xa

    goto :goto_18b

    :cond_1d3
    const/16 v2, 0xf

    goto :goto_18b

    .line 146
    :cond_1d6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u2212"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1a3

    .line 150
    :cond_1ea
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    if-eqz v2, :cond_1fa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-nez v2, :cond_227

    .line 151
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrChartView$XemsUiText;->waiting()Ljava/lang/String;

    move-result-object v2

    .line 153
    add-float/2addr v3, v5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float v4, v11, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4c

    .line 158
    :cond_227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 160
    const/4 v6, 0x0

    .line 161
    const/16 v17, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    const/16 v16, 0x0

    .line 164
    const/4 v2, 0x0

    :goto_23c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v7

    if-ge v2, v7, :cond_2ce

    .line 165
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v14, v7, v2

    .line 166
    cmp-long v7, v14, v26

    if-gez v7, :cond_255

    .line 164
    :goto_252
    add-int/lit8 v2, v2, 0x1

    goto :goto_23c

    .line 169
    :cond_255
    sub-long v14, v14, v26

    long-to-float v4, v14

    move-wide/from16 v0, v28

    long-to-float v7, v0

    div-float/2addr v4, v7

    sub-float v7, v5, v3

    mul-float/2addr v4, v7

    add-float v7, v3, v4

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v4, v4, v2

    int-to-float v4, v4

    invoke-static {v4, v9, v10, v11, v12}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v4

    .line 171
    if-lez v2, :cond_2bd

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v8, v8, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v14, v8, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v8, v8, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    add-int/lit8 v13, v2, -0x1

    aget-wide v18, v8, v13

    sub-long v14, v14, v18

    const-wide/16 v18, 0x2ee0

    cmp-long v8, v14, v18

    if-lez v8, :cond_2bd

    const/4 v8, 0x1

    .line 172
    :goto_28b
    if-eqz v6, :cond_28f

    if-eqz v8, :cond_2bf

    .line 173
    :cond_28f
    if-eqz v6, :cond_2a2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v12

    move/from16 v18, v11

    .line 174
    invoke-direct/range {v13 .. v18}, Lcom/isaigu/gymapp/wearable/HrChartView;->closeArea(Landroid/graphics/Canvas;FFFF)V

    .line 175
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 177
    :cond_2a2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    const/4 v6, 0x1

    move/from16 v16, v7

    :goto_2ba
    move/from16 v17, v7

    .line 187
    goto :goto_252

    .line 171
    :cond_2bd
    const/4 v8, 0x0

    goto :goto_28b

    .line 183
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 184
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->area:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2ba

    .line 189
    :cond_2ce
    if-eqz v6, :cond_4c

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v12

    move/from16 v18, v11

    .line 192
    invoke-direct/range {v13 .. v18}, Lcom/isaigu/gymapp/wearable/HrChartView;->closeArea(Landroid/graphics/Canvas;FFFF)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->last()I

    move-result v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v2

    .line 194
    const/4 v6, 0x1

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v2

    .line 195
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    new-instance v18, Landroid/graphics/LinearGradient;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/4 v7, 0x5

    new-array v0, v7, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_3de

    .line 198
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/isaigu/gymapp/wearable/HrChartView;->gradientStops(II)[F

    move-result-object v24

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v20, v11

    move/from16 v22, v12

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 195
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 199
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->line:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v14, 0x4b0

    rem-long/2addr v6, v14

    long-to-float v6, v6

    const/high16 v7, 0x44960000    # 1200.0f

    div-float/2addr v6, v7

    .line 203
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    const/high16 v8, 0x42e00000    # 112.0f

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v6

    mul-float/2addr v8, v13

    float-to-int v8, v8

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    const/high16 v7, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v7

    const/high16 v8, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v8

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    const/high16 v2, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    const-wide/16 v6, 0x3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/wearable/HrChartView;->postInvalidateDelayed(J)V

    .line 211
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_4c

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v16, v26

    move-wide/from16 v18, v28

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v9

    move/from16 v25, v10

    .line 212
    invoke-direct/range {v14 .. v25}, Lcom/isaigu/gymapp/wearable/HrChartView;->drawScrub(Landroid/graphics/Canvas;JJFFFFII)V

    goto/16 :goto_4c

    :cond_3c5
    move v2, v4

    goto/16 :goto_d3

    :cond_3c8
    move-wide/from16 v26, v8

    move-wide/from16 v28, v6

    goto/16 :goto_93

    .line 126
    :array_3ce
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x41200000    # 10.0f
    .end array-data

    .line 195
    :array_3de
    .array-data 4
        -0x1ac6cb
        -0x47400
        -0x227cb
        -0xbc5fb9
        -0x6f5b52
    .end array-data
.end method

.method private drawGuide(Landroid/graphics/Canvas;IIIFFFFILjava/lang/String;Z)V
    .registers 18

    .prologue
    .line 271
    if-lez p2, :cond_6

    if-lt p2, p3, :cond_6

    if-le p2, p4, :cond_7

    .line 280
    :cond_6
    :goto_6
    return-void

    .line 274
    :cond_7
    int-to-float v0, p2

    invoke-static {v0, p3, p4, p5, p6}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v2

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    const/16 v1, 0xaa

    invoke-static {p9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    if-eqz p11, :cond_5f

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    :goto_36
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 277
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p7

    move v3, p8

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v1

    add-float/2addr v1, p8

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->label:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 276
    :cond_5f
    const/4 v0, 0x0

    goto :goto_36
.end method

.method private drawScrub(Landroid/graphics/Canvas;JJFFFFII)V
    .registers 28

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    sub-float v4, v4, p6

    sub-float v5, p7, p6

    div-float/2addr v4, v5

    move-wide/from16 v0, p4

    long-to-float v5, v0

    mul-float/2addr v4, v5

    float-to-long v4, v4

    add-long v12, p2, v4

    .line 238
    const/4 v5, -0x1

    .line 239
    const-wide v6, 0x7fffffffffffffffL

    .line 240
    const/4 v4, 0x0

    move v10, v5

    :goto_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v5

    if-ge v4, v5, :cond_39

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v5, v5, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v8, v5, v4

    sub-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 242
    cmp-long v5, v8, v6

    if-gez v5, :cond_197

    move-wide v6, v8

    move v5, v4

    .line 240
    :goto_35
    add-int/lit8 v4, v4, 0x1

    move v10, v5

    goto :goto_18

    .line 247
    :cond_39
    if-ltz v10, :cond_41

    const-wide/16 v4, 0x7530

    cmp-long v4, v6, v4

    if-lez v4, :cond_42

    .line 267
    :cond_41
    :goto_41
    return-void

    .line 250
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v4, v4, v10

    sub-long v4, v4, p2

    long-to-float v4, v4

    move-wide/from16 v0, p4

    long-to-float v5, v0

    div-float/2addr v4, v5

    sub-float v5, p7, p6

    mul-float/2addr v4, v5

    add-float v5, p6, v4

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v4, v4, v10

    int-to-float v4, v4

    move/from16 v0, p10

    move/from16 v1, p11

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v4, v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/HrChartView;->yOf(FIIFF)F

    move-result v11

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v7, 0x66

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 254
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->guide:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move/from16 v6, p8

    move v7, v5

    move/from16 v8, p9

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v6, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v6, v6, v10

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v4

    .line 256
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    const/high16 v6, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 258
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->nowMs:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v11, v11, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v12, v11, v10

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 259
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    iget-object v9, v9, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  \u00b7  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "\u2212%d:%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-wide/16 v14, 0x3c

    div-long v14, v6, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-wide/16 v14, 0x3c

    rem-long/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v8

    add-float/2addr v7, v8

    .line 261
    sub-float v8, p7, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float/2addr v5, v9

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move/from16 v0, p6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 262
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->r:Landroid/graphics/RectF;

    add-float/2addr v7, v5

    const/high16 v9, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v9

    add-float v9, v9, p8

    move/from16 v0, p8

    invoke-virtual {v8, v5, v0, v7, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 263
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->r:Landroid/graphics/RectF;

    const/high16 v8, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v8

    const/high16 v9, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v4

    add-float/2addr v4, v5

    const/high16 v5, 0x41980000    # 19.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/isaigu/gymapp/wearable/HrChartView;->dp(F)F

    move-result v5

    add-float v5, v5, p8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/HrChartView;->bubble:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_41

    :cond_197
    move v5, v10

    goto/16 :goto_35
.end method

.method private gradientStops(II)[F
    .registers 12

    .prologue
    const/4 v8, 0x4

    const/4 v0, 0x0

    .line 226
    new-array v1, v8, [F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    const/4 v2, 0x1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 227
    const/4 v2, 0x5

    new-array v2, v2, [F

    .line 228
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 229
    :goto_31
    if-ge v0, v8, :cond_4e

    .line 230
    add-int/lit8 v3, v0, 0x1

    aget v4, v2, v0

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, p2

    aget v7, v1, v0

    sub-float/2addr v6, v7

    sub-int v7, p2, p1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v2, v3

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 232
    :cond_4e
    return-object v2
.end method

.method private static yOf(FIIFF)F
    .registers 8

    .prologue
    .line 283
    int-to-float v0, p1

    sub-float v0, p0, v0

    const/4 v1, 0x1

    sub-int v2, p2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 284
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    sub-float v0, p4, v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 93
    :try_start_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/HrChartView;->draw0(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 97
    :goto_3
    return-void

    .line 94
    :catch_4
    move-exception v0

    .line 95
    const-string v1, "HrChartView.onDraw"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 76
    if-eqz v1, :cond_a

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 77
    :cond_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    .line 79
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->invalidate()V

    .line 87
    :goto_1a
    return v0

    .line 82
    :cond_1b
    if-eq v1, v0, :cond_20

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    .line 83
    :cond_20
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->scrubX:F

    .line 84
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->invalidate()V

    goto :goto_1a

    .line 87
    :cond_28
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public set(Lcom/isaigu/gymapp/wearable/HrHistory$Series;JJIII)V
    .registers 9

    .prologue
    .line 60
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->data:Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    .line 61
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->nowMs:J

    .line 62
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->windowMs:J

    .line 63
    if-lez p6, :cond_12

    :goto_8
    iput p6, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->limit:I

    .line 64
    iput p7, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->cap:I

    .line 65
    iput p8, p0, Lcom/isaigu/gymapp/wearable/HrChartView;->rest:I

    .line 66
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrChartView;->invalidate()V

    .line 67
    return-void

    .line 63
    :cond_12
    const/16 p6, 0xaa

    goto :goto_8
.end method
