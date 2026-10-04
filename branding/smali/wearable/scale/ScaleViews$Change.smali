.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# instance fields
.field final area:Landroid/graphics/Path;

.field fat:[D

.field grow:F

.field final line:Landroid/graphics/Path;

.field muscle:[D

.field final p:Landroid/graphics/Paint;

.field t:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1226
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1217
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    .line 1218
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    .line 1219
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    .line 1220
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    .line 1221
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    .line 1222
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    .line 1223
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->grow:F

    .line 1227
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 32

    .prologue
    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 1244
    const/high16 v2, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    const/high16 v2, 0x42c00000    # 96.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v13

    const/high16 v4, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    sub-float v14, v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v13

    sub-float v15, v2, v4

    .line 1246
    const/4 v2, 0x2

    move/from16 v0, v23

    if-lt v0, v2, :cond_56

    const/4 v2, 0x0

    cmpg-float v2, v14, v2

    if-lez v2, :cond_56

    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-gtz v2, :cond_9f

    .line 1247
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const-string v2, "\u041f\u0440\u043e\u043c\u044f\u043d\u0430\u0442\u0430 \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u0441\u043b\u0435\u0434 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435"

    const-string v4, "The change is shown after the second measurement"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    const/high16 v7, -0x40800000    # -1.0f

    move-object/from16 v2, p1

    move-object/from16 v8, p0

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1294
    :goto_9e
    return-void

    .line 1253
    :cond_9f
    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v24, v0

    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v25, v0

    .line 1254
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1255
    const/4 v2, 0x0

    :goto_b0
    move/from16 v0, v23

    if-ge v2, v0, :cond_ef

    .line 1256
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    aput-wide v8, v24, v2

    .line 1257
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    aput-wide v8, v25, v2

    .line 1258
    aget-wide v8, v24, v2

    aget-wide v10, v25, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 1259
    aget-wide v8, v24, v2

    aget-wide v10, v25, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1255
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 1261
    :cond_ef
    sub-double v8, v4, v6

    .line 1262
    const-wide v10, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v10, v8

    sub-double v16, v6, v10

    .line 1263
    const-wide v6, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v6, v8

    add-double v18, v4, v6

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    const/4 v4, 0x0

    aget-wide v26, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    add-int/lit8 v4, v23, -0x1

    aget-wide v28, v2, v4

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1268
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpl-double v2, v8, v4

    if-lez v2, :cond_147

    const/4 v2, 0x2

    move v11, v2

    .line 1269
    :goto_130
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    move v12, v2

    :goto_136
    int-to-double v4, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_22a

    .line 1270
    rem-int v2, v12, v11

    if-eqz v2, :cond_14a

    .line 1269
    :goto_143
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_136

    .line 1268
    :cond_147
    const/4 v2, 0x1

    move v11, v2

    goto :goto_130

    .line 1273
    :cond_14a
    float-to-double v4, v13

    int-to-double v6, v12

    sub-double v6, v18, v6

    sub-double v8, v18, v16

    div-double/2addr v6, v8

    float-to-double v8, v15

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-nez v12, :cond_1fc

    const v2, 0x3fb33333    # 1.4f

    :goto_167
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-nez v12, :cond_201

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x82

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    :goto_17e
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-nez v12, :cond_20b

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    aput v8, v6, v7

    const/4 v7, 0x1

    const/high16 v8, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    aput v8, v6, v7

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    :goto_1a6
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1278
    add-float v5, v3, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-nez v12, :cond_20d

    const-string v2, "\u043d\u0430\u0447\u0430\u043b\u043e"

    const-string v6, "start"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1dd
    const/high16 v2, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    sub-float v7, v3, v2

    const/high16 v2, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v8, v4, v2

    const/high16 v9, -0x40800000    # -1.0f

    move-object/from16 v4, p1

    move-object/from16 v10, p0

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    goto/16 :goto_143

    .line 1275
    :cond_1fc
    const v2, 0x3f333333    # 0.7f

    goto/16 :goto_167

    .line 1276
    :cond_201
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v6, 0x2d

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_17e

    .line 1277
    :cond_20b
    const/4 v2, 0x0

    goto :goto_1a6

    .line 1282
    :cond_20d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v12, :cond_227

    const-string v2, "+"

    :goto_216
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1dd

    :cond_227
    const-string v2, "\u2212"

    goto :goto_216

    .line 1284
    :cond_22a
    float-to-double v4, v13

    sub-double v6, v18, v16

    div-double v6, v18, v6

    float-to-double v8, v15

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 v20, v0

    .line 1285
    const v21, -0xdd3aa2

    const/16 v22, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v24

    move/from16 v7, v23

    move-wide/from16 v8, v26

    move-wide/from16 v10, v28

    move v12, v3

    invoke-virtual/range {v4 .. v22}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->series(Landroid/graphics/Canvas;[DIJJFFFFDDFIZ)V

    .line 1286
    const v21, -0xa61f5

    const/16 v22, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v25

    move/from16 v7, v23

    move-wide/from16 v8, v26

    move-wide/from16 v10, v28

    move v12, v3

    invoke-virtual/range {v4 .. v22}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->series(Landroid/graphics/Canvas;[DIJJFFFFDDFIZ)V

    .line 1287
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "d.MM"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v26

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float v8, v4, v7

    const/high16 v9, -0x40800000    # -1.0f

    move-object/from16 v4, p1

    move v7, v3

    move-object/from16 v10, p0

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v28

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    add-float v5, v3, v14

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    sub-float v6, v2, v3

    const/high16 v7, -0x40800000    # -1.0f

    move-object/from16 v2, p1

    move-object v3, v8

    move-object/from16 v8, p0

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    goto/16 :goto_9e
.end method

.method series(Landroid/graphics/Canvas;[DIJJFFFFDDFIZ)V
    .registers 33

    .prologue
    .line 1298
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1299
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1300
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1301
    const/4 v2, 0x0

    move v3, v2

    move v10, v4

    move v11, v5

    :goto_10
    move/from16 v0, p3

    if-ge v3, v0, :cond_60

    .line 1302
    cmp-long v2, p6, p4

    if-lez v2, :cond_5a

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    aget-wide v4, v2, v3

    sub-long v4, v4, p4

    long-to-double v4, v4

    sub-long v6, p6, p4

    long-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    :goto_24
    mul-float v2, v2, p10

    add-float v5, p8, v2

    .line 1303
    move/from16 v0, p9

    float-to-double v6, v0

    aget-wide v8, p2, v3

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->grow:F

    float-to-double v10, v2

    mul-double/2addr v8, v10

    sub-double v8, p14, v8

    sub-double v10, p14, p12

    div-double/2addr v8, v10

    move/from16 v0, p11

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 1304
    if-nez v3, :cond_4a

    .line 1305
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1306
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    move/from16 v0, p16

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1308
    :cond_4a
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1309
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1301
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v10, v4

    move v11, v5

    goto :goto_10

    .line 1302
    :cond_5a
    int-to-float v2, v3

    add-int/lit8 v4, p3, -0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    goto :goto_24

    .line 1313
    :cond_60
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    move/from16 v0, p16

    invoke-virtual {v2, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1314
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1315
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1316
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/16 v3, 0x2e

    move/from16 v0, p17

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1317
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1318
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1319
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1320
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1321
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1322
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1323
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1324
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1325
    const/4 v2, 0x0

    move v3, v2

    :goto_be
    move/from16 v0, p3

    if-ge v3, v0, :cond_126

    .line 1326
    cmp-long v2, p6, p4

    if-lez v2, :cond_11a

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    aget-wide v4, v2, v3

    sub-long v4, v4, p4

    long-to-double v4, v4

    sub-long v6, p6, p4

    long-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    :goto_d2
    mul-float v2, v2, p10

    add-float v4, p8, v2

    .line 1327
    move/from16 v0, p9

    float-to-double v6, v0

    aget-wide v8, p2, v3

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->grow:F

    float-to-double v12, v2

    mul-double/2addr v8, v12

    sub-double v8, p14, v8

    sub-double v12, p14, p12

    div-double/2addr v8, v12

    move/from16 v0, p11

    float-to-double v12, v0

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    double-to-float v5, v6

    .line 1328
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1329
    add-int/lit8 v2, p3, -0x1

    if-ne v3, v2, :cond_120

    const/high16 v2, 0x40e00000    # 7.0f

    :goto_f7
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1330
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1331
    add-int/lit8 v2, p3, -0x1

    if-ne v3, v2, :cond_123

    const/high16 v2, 0x40a00000    # 5.0f

    :goto_10d
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1325
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_be

    .line 1326
    :cond_11a
    int-to-float v2, v3

    add-int/lit8 v4, p3, -0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    goto :goto_d2

    .line 1329
    :cond_120
    const/high16 v2, 0x40900000    # 4.5f

    goto :goto_f7

    .line 1331
    :cond_123
    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_10d

    .line 1333
    :cond_126
    add-int/lit8 v2, p3, -0x1

    aget-wide v4, p2, v2

    .line 1334
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_142

    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-lez v2, :cond_1f5

    const/4 v2, 0x1

    :goto_13e
    move/from16 v0, p18

    if-ne v2, v0, :cond_1f8

    :cond_142
    const/4 v2, 0x1

    move v9, v2

    .line 1335
    :goto_144
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1336
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1337
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1338
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_1fc

    const-string v2, "+"

    :goto_170
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043a\u0433"

    const-string v4, " kg"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1340
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v5, v11, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v6, v10, v2

    const/high16 v7, -0x40800000    # -1.0f

    move-object v2, p1

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1341
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1342
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1343
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-eqz v9, :cond_200

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_1ce
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1344
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-eqz p18, :cond_203

    const-string v2, "\u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v4, "muscle mass"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1dd
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v5, v11, v2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float v6, v10, v2

    const/high16 v7, -0x40800000    # -1.0f

    move-object v2, p1

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1345
    return-void

    .line 1334
    :cond_1f5
    const/4 v2, 0x0

    goto/16 :goto_13e

    :cond_1f8
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_144

    .line 1339
    :cond_1fc
    const-string v2, "\u2212"

    goto/16 :goto_170

    .line 1343
    :cond_200
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_1ce

    .line 1344
    :cond_203
    const-string v2, "\u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v4, "fat"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1dd
.end method

.method public set([D[D[J)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1231
    if-eqz p1, :cond_32

    :goto_3
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    .line 1232
    if-eqz p2, :cond_35

    :goto_7
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    .line 1233
    if-eqz p3, :cond_38

    :goto_b
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    .line 1234
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1235
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1236
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1237
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ChangeGrow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ChangeGrow;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1238
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1239
    return-void

    .line 1231
    :cond_32
    new-array p1, v0, [D

    goto :goto_3

    .line 1232
    :cond_35
    new-array p2, v0, [D

    goto :goto_7

    .line 1233
    :cond_38
    new-array p3, v0, [J

    goto :goto_b

    .line 1234
    nop

    :array_3c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
