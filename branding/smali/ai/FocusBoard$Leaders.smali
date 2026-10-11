.class final Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
.super Landroid/view/View;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Leaders"
.end annotation


# instance fields
.field private final at:[I

.field private final dot:Landroid/graphics/Paint;

.field private final halo:Landroid/graphics/Paint;

.field private final line:Landroid/graphics/Paint;

.field private final me:[I

.field private final path:Landroid/graphics/Path;

.field private final pt:[F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1375
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1366
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    .line 1367
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    .line 1368
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    .line 1369
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    .line 1370
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    .line 1371
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    .line 1372
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    .line 1376
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1377
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1378
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1379
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1380
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1381
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1382
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1383
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->setClickable(Z)V

    .line 1384
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->setFocusable(Z)V

    .line 1385
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 30

    .prologue
    .line 1389
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1000()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    move-result-object v14

    .line 1390
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v4

    if-gtz v4, :cond_d

    .line 1445
    :cond_c
    :goto_c
    return-void

    .line 1393
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getLocationInWindow([I)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    invoke-virtual {v14, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getLocationInWindow([I)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v15, v4

    .line 1396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v16, v0

    .line 1397
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v0, v4

    move/from16 v17, v0

    .line 1398
    const/4 v10, 0x0

    .line 1399
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x3fb33333    # 1.4f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v8, v4

    .line 1400
    const/4 v4, 0x0

    move v13, v4

    :goto_5b
    const/4 v4, 0x2

    if-ge v13, v4, :cond_2b1

    .line 1401
    if-nez v13, :cond_91

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1300()[I

    move-result-object v4

    .line 1402
    :goto_64
    array-length v0, v4

    move/from16 v18, v0

    const/4 v5, 0x0

    move v12, v5

    :goto_69
    move/from16 v0, v18

    if-ge v12, v0, :cond_2ac

    aget v5, v4, v12

    .line 1403
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1100()[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    move-result-object v6

    aget-object v19, v6, v5

    .line 1404
    if-eqz v19, :cond_2b8

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    if-lez v6, :cond_2b8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    invoke-virtual {v14, v13, v5, v13, v6}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->anchor(III[F)Z

    move-result v5

    if-nez v5, :cond_96

    move v5, v10

    .line 1402
    :goto_8c
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move v10, v5

    goto :goto_69

    .line 1401
    :cond_91
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1400()[I

    move-result-object v4

    goto :goto_64

    .line 1407
    :cond_96
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v20, v5, v6

    .line 1409
    if-nez v13, :cond_25b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    move v11, v5

    .line 1410
    :goto_db
    if-nez v13, :cond_26e

    add-float v5, v11, v17

    .line 1411
    :goto_df
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float v21, v15, v6

    .line 1412
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    add-float v22, v16, v6

    .line 1413
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v6, :cond_276

    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    if-eqz v6, :cond_272

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1414
    :goto_ff
    move-object/from16 v0, v19

    iget-boolean v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v7, :cond_27a

    const/16 v7, 0x30

    .line 1415
    :goto_107
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 1416
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move/from16 v0, v20

    invoke-virtual {v9, v11, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move/from16 v0, v20

    invoke-virtual {v9, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_288

    const/high16 v5, 0x40a00000    # 5.0f

    :goto_137
    mul-float/2addr v5, v8

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v5, :cond_28c

    const/16 v5, 0x8

    :goto_147
    invoke-static {v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_29a

    const v5, 0x3fcccccd    # 1.6f

    mul-float/2addr v5, v8

    :goto_169
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_29d

    const/high16 v5, 0x40a00000    # 5.0f

    :goto_190
    invoke-static {v9, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v0, v5

    move/from16 v23, v0

    .line 1426
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v5, :cond_2a1

    const/16 v5, 0x40

    :goto_1a3
    invoke-static {v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1427
    const v5, 0x40066666    # 2.1f

    mul-float v5, v5, v23

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v5, :cond_2a5

    move v5, v6

    :goto_1c9
    move-object/from16 v0, v19

    iget-boolean v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v9, :cond_2a8

    const/16 v9, 0x60

    :goto_1d1
    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1431
    const v5, 0x3fe66666    # 1.8f

    mul-float/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1432
    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_2b8

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-nez v5, :cond_2b8

    .line 1434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v24, 0x578

    rem-long v10, v10, v24

    long-to-double v10, v10

    const-wide v24, 0x4095e00000000000L    # 1400.0

    div-double v10, v10, v24

    .line 1435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    const v7, 0x3fb33333    # 1.4f

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    const-wide/high16 v24, 0x4068000000000000L    # 192.0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v10

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v7, v0

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1437
    const v5, 0x400ccccd    # 2.2f

    const v6, 0x4019999a    # 2.4f

    double-to-float v7, v10

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float v5, v5, v23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1438
    const/4 v5, 0x1

    goto/16 :goto_8c

    .line 1409
    :cond_25b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v11, v5

    goto/16 :goto_db

    .line 1410
    :cond_26e
    sub-float v5, v11, v17

    goto/16 :goto_df

    .line 1413
    :cond_272
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_ff

    :cond_276
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_ff

    .line 1414
    :cond_27a
    move-object/from16 v0, v19

    iget-boolean v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v7, :cond_284

    const/16 v7, 0xf0

    goto/16 :goto_107

    :cond_284
    const/16 v7, 0x8c

    goto/16 :goto_107

    .line 1419
    :cond_288
    const/high16 v5, 0x40600000    # 3.5f

    goto/16 :goto_137

    .line 1420
    :cond_28c
    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_296

    const/16 v5, 0x40

    goto/16 :goto_147

    :cond_296
    const/16 v5, 0x1c

    goto/16 :goto_147

    :cond_29a
    move v5, v8

    .line 1422
    goto/16 :goto_169

    .line 1425
    :cond_29d
    const/high16 v5, 0x40600000    # 3.5f

    goto/16 :goto_190

    .line 1426
    :cond_2a1
    const/16 v5, 0x50

    goto/16 :goto_1a3

    .line 1428
    :cond_2a5
    const/4 v5, -0x1

    goto/16 :goto_1c9

    :cond_2a8
    const/16 v9, 0xff

    goto/16 :goto_1d1

    .line 1400
    :cond_2ac
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto/16 :goto_5b

    .line 1442
    :cond_2b1
    if-eqz v10, :cond_c

    .line 1443
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->postInvalidateOnAnimation()V

    goto/16 :goto_c

    :cond_2b8
    move v5, v10

    goto/16 :goto_8c
.end method
