.class final Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;
.super Landroid/graphics/drawable/Drawable;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Padlock"
.end annotation


# instance fields
.field private final color:I

.field private final p:Landroid/graphics/Paint;

.field private final shut:Z


# direct methods
.method constructor <init>(IZ)V
    .registers 5

    .prologue
    .line 2317
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2313
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    .line 2318
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->shut:Z

    .line 2319
    iput p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->color:I

    .line 2320
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2321
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 18

    .prologue
    .line 2325
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2326
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v8, v1

    .line 2327
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v9, v1

    .line 2328
    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v2, 0x3e3851ec    # 0.18f

    mul-float/2addr v2, v8

    add-float v10, v1, v2

    .line 2329
    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const v2, 0x3eeb851f    # 0.46f

    mul-float/2addr v2, v9

    add-float v7, v1, v2

    .line 2330
    const v1, 0x3f23d70a    # 0.64f

    mul-float v11, v8, v1

    .line 2331
    const v1, 0x3eeb851f    # 0.46f

    mul-float v12, v9, v1

    .line 2332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2333
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, v10, v11

    add-float v4, v7, v12

    invoke-direct {v1, v10, v7, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v8

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    const v2, 0x3de147ae    # 0.11f

    mul-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2337
    const v1, 0x3f1eb852    # 0.62f

    mul-float v13, v11, v1

    .line 2338
    sub-float v1, v11, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v14, v10, v1

    .line 2339
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->shut:Z

    if-eqz v1, :cond_fd

    const/4 v1, 0x0

    .line 2340
    :goto_7d
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    sub-float/2addr v3, v1

    add-float v4, v14, v13

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    sub-float v1, v5, v1

    invoke-direct {v2, v14, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2341
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    .line 2342
    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2343
    add-float v2, v14, v13

    add-float v4, v14, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v15

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2344
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->shut:Z

    if-eqz v1, :cond_103

    move v5, v7

    :goto_bc
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    move v4, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2347
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    add-float/2addr v1, v10

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v12

    add-float/2addr v2, v7

    const v3, 0x3d75c28f    # 0.06f

    mul-float/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2349
    return-void

    .line 2339
    :cond_fd
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v9

    goto/16 :goto_7d

    .line 2344
    :cond_103
    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v9

    add-float v5, v15, v1

    goto :goto_bc
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 2363
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2354
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2359
    return-void
.end method
