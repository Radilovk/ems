.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormBar"
.end annotation


# instance fields
.field grow:F

.field n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

.field final p:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1231
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    .line 1232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->r:Landroid/graphics/RectF;

    .line 1234
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->grow:F

    .line 1238
    return-void
.end method

.method static num(DI)Ljava/lang/String;
    .registers 9

    .prologue
    .line 1264
    if-nez p2, :cond_b

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    if-nez v0, :cond_5

    .line 1327
    :cond_4
    :goto_4
    return-void

    .line 1272
    :cond_5
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    sub-float v7, v0, v1

    sub-float v8, v7, v6

    .line 1273
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    .line 1274
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v11

    .line 1275
    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    const/4 v0, 0x5

    if-ge v1, v0, :cond_138

    .line 1276
    int-to-float v0, v1

    mul-float/2addr v0, v8

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v0, v2

    add-float v2, v6, v0

    if-nez v1, :cond_104

    const/4 v0, 0x0

    :goto_3b
    add-float/2addr v2, v0

    .line 1277
    add-int/lit8 v0, v1, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v8

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v0, v3

    add-float v3, v6, v0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_10c

    const/4 v0, 0x0

    :goto_49
    sub-float/2addr v3, v0

    .line 1278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->r:Landroid/graphics/RectF;

    add-float v4, v9, v10

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1279
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1280
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    if-ne v1, v11, :cond_114

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v0, v0, v1

    :goto_62
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1281
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->r:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v10, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v10, v5

    iget-object v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1282
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1283
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    if-eq v1, v11, :cond_82

    const/4 v0, 0x2

    if-ne v1, v0, :cond_122

    :cond_82
    const/4 v0, 0x1

    :goto_83
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1284
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1285
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    if-ne v1, v11, :cond_125

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_97
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1286
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->names:[Ljava/lang/String;

    aget-object v0, v0, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v3, v9, v10

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1287
    if-lez v1, :cond_ff

    .line 1288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1289
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1290
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1291
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    aget-wide v4, v0, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    aget-wide v12, v0, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    cmpl-double v0, v4, v12

    if-nez v0, :cond_136

    const/4 v0, 0x0

    :goto_e7
    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->num(DI)Ljava/lang/String;

    move-result-object v0

    int-to-float v2, v1

    mul-float/2addr v2, v8

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v6

    add-float v3, v9, v10

    const/high16 v4, 0x41800000    # 16.0f

    .line 1292
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    .line 1291
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1275
    :cond_ff
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2e

    .line 1276
    :cond_104
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    goto/16 :goto_3b

    .line 1277
    :cond_10c
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    goto/16 :goto_49

    .line 1280
    :cond_114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v0, v0, v1

    const/16 v5, 0x50

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_62

    .line 1283
    :cond_122
    const/4 v0, 0x0

    goto/16 :goto_83

    .line 1285
    :cond_125
    const/4 v0, 0x2

    if-ne v1, v0, :cond_132

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0xc8

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_97

    :cond_132
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_97

    .line 1291
    :cond_136
    const/4 v0, 0x1

    goto :goto_e7

    .line 1296
    :cond_138
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1297
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    const v1, 0x3f99999a    # 1.2f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1298
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1299
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v8

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    add-float v1, v6, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, v8

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v0, v2

    add-float v3, v6, v0

    .line 1300
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v2, v9, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v4, v9, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1304
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    invoke-virtual {p0, v0, v1, v6, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->xOf(DFF)F

    move-result v0

    sub-float/2addr v0, v6

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->grow:F

    mul-float/2addr v0, v1

    add-float v1, v6, v0

    .line 1305
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v10, v0

    add-float v2, v9, v0

    .line 1306
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1307
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x66000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1308
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    add-float/2addr v0, v2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1309
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1310
    const/high16 v0, 0x41280000    # 10.5f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1311
    if-ltz v11, :cond_28b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v0, v0, v11

    .line 1312
    :goto_1d6
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1313
    const/high16 v3, 0x40d00000    # 6.5f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-wide v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->decimals:I

    invoke-static {v4, v5, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->num(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->unit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1316
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1317
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1318
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float/2addr v3, v4

    .line 1319
    sub-float v4, v7, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    sub-float/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1320
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->r:Landroid/graphics/RectF;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    add-float/2addr v3, v1

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    invoke-virtual {v4, v1, v5, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1321
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1322
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    const v1, -0xeeeeef

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1324
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1325
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1326
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_4

    .line 1311
    :cond_28b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_1d6
.end method

.method public set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V
    .registers 6

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    .line 1242
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1243
    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1244
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1245
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormGrow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormGrow;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1246
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1247
    return-void

    .line 1242
    :array_28
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method xOf(DFF)F
    .registers 16

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->n:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    .line 1251
    const/4 v0, 0x0

    aget-wide v0, v2, v0

    const/4 v3, 0x5

    aget-wide v4, v2, v3

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1252
    const/4 v0, 0x4

    .line 1253
    const/4 v1, 0x1

    :goto_14
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1f

    .line 1254
    aget-wide v6, v2, v1

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3f

    .line 1255
    add-int/lit8 v0, v1, -0x1

    .line 1259
    :cond_1f
    aget-wide v6, v2, v0

    sub-double/2addr v4, v6

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v2, v1

    aget-wide v2, v2, v0

    sub-double v2, v8, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double v2, v4, v2

    .line 1260
    int-to-double v0, v0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    float-to-double v2, p4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    add-float/2addr v0, p3

    return v0

    .line 1253
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method
