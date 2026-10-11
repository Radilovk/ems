.class final Lcom/isaigu/gymapp/ai/FocusBoard$Ring;
.super Landroid/view/View;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ring"
.end annotation


# instance fields
.field private final arc:Landroid/graphics/Paint;

.field private final box:Landroid/graphics/RectF;

.field private final color:I

.field private enabled:Z

.field private final glowP:Landroid/graphics/Paint;

.field private live:Z

.field private final num:Landroid/graphics/Paint;

.field private shown:F

.field private final track:Landroid/graphics/Paint;

.field private final unit:Landroid/graphics/Paint;

.field private value:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1282
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1269
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    .line 1270
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    .line 1271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    .line 1272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    .line 1273
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    .line 1274
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    .line 1277
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    .line 1278
    iput-boolean v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    .line 1283
    iput p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->color:I

    .line 1284
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 1285
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1286
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1287
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1288
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v3, 0xdd

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1289
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1290
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1291
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1292
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1293
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1294
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    const v2, 0x4019999a    # 2.4f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1295
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1296
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    const/16 v1, 0x30

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1297
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1298
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1299
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1300
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1301
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1302
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    const/4 v1, 0x2

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1303
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 22

    .prologue
    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1318
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    sub-float v8, v4, v5

    .line 1319
    const/4 v4, 0x0

    cmpg-float v4, v8, v4

    if-gtz v4, :cond_1e

    .line 1355
    :cond_1d
    :goto_1d
    return-void

    .line 1322
    :cond_1e
    const/high16 v4, 0x40000000    # 2.0f

    div-float v9, v2, v4

    .line 1323
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v3, v2

    const v3, 0x3d23d70a    # 0.04f

    mul-float/2addr v3, v8

    add-float v10, v2, v3

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v8, v3

    sub-float v3, v9, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v8, v4

    sub-float v4, v10, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v8, v5

    add-float/2addr v5, v9

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v8, v6

    add-float/2addr v6, v10

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    const/high16 v4, 0x43070000    # 135.0f

    const/high16 v5, 0x43870000    # 270.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1326
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6d

    .line 1327
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    .line 1329
    :cond_6d
    const/4 v2, 0x0

    const/16 v3, 0x64

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    .line 1330
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    sub-float v4, v2, v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    .line 1331
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_194

    .line 1332
    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    .line 1336
    :goto_a4
    const/high16 v2, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v5, v2, v3

    .line 1337
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-eqz v2, :cond_110

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v5, v2

    if-lez v2, :cond_110

    .line 1338
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->live:Z

    if-eqz v2, :cond_199

    .line 1339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x640

    rem-long/2addr v2, v6

    long-to-double v2, v2

    const-wide/high16 v6, 0x4099000000000000L    # 1600.0

    div-double/2addr v2, v6

    .line 1340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    const-wide/high16 v12, 0x4050000000000000L    # 64.0

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v16

    sub-double v2, v14, v2

    mul-double/2addr v2, v12

    add-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->postInvalidateOnAnimation()V

    .line 1345
    :goto_f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    const/high16 v4, 0x43070000    # 135.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    const/high16 v4, 0x43070000    # 135.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1348
    :cond_110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    const v3, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-eqz v2, :cond_1a4

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_127
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1350
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-eqz v2, :cond_1a7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1351
    :goto_14b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v4

    add-float/2addr v3, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1352
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-nez v2, :cond_1d

    .line 1353
    const-string v2, "\u0438\u0437\u043a\u043b."

    const-string v3, "off"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v4

    add-float/2addr v3, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    const v5, 0x3fcccccd    # 1.6f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1d

    .line 1334
    :cond_194
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->postInvalidateOnAnimation()V

    goto/16 :goto_a4

    .line 1343
    :cond_199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_f0

    .line 1349
    :cond_1a4
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto :goto_127

    .line 1350
    :cond_1a7
    const-string v2, "\u2014"

    goto :goto_14b
.end method

.method set(IZZ)V
    .registers 5

    .prologue
    .line 1306
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-ne p2, v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->live:Z

    if-eq p3, v0, :cond_15

    .line 1307
    :cond_c
    iput p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    .line 1308
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    .line 1309
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->live:Z

    .line 1310
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->invalidate()V

    .line 1312
    :cond_15
    return-void
.end method
