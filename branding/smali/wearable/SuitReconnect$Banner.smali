.class final Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;
.super Landroid/graphics/drawable/Drawable;
.source "SuitReconnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SuitReconnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Banner"
.end annotation


# instance fields
.field private final big:Landroid/graphics/Paint;

.field private final box:Landroid/graphics/RectF;

.field private final d:F

.field private final fill:Landroid/graphics/Paint;

.field private line1:Ljava/lang/String;

.field private line2:Ljava/lang/String;

.field private ok:Z

.field private final small:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(F)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 369
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 360
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->fill:Landroid/graphics/Paint;

    .line 361
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->big:Landroid/graphics/Paint;

    .line 362
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->small:Landroid/graphics/Paint;

    .line 364
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    .line 365
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line1:Ljava/lang/String;

    .line 366
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line2:Ljava/lang/String;

    .line 370
    iput p1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 372
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->big:Landroid/graphics/Paint;

    const/high16 v1, 0x41b00000    # 22.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 373
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 374
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->small:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 375
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->small:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 376
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const/high16 v11, 0x40c00000    # 6.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v10, 0x41600000    # 14.0f

    const/high16 v9, 0x40800000    # 4.0f

    .line 386
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 387
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1b

    .line 413
    :cond_1a
    :goto_1a
    return-void

    .line 390
    :cond_1b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->ok:Z

    if-eqz v0, :cond_a1

    .line 392
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->big:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->small:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 393
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 394
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    div-float v3, v0, v6

    sub-float v3, v1, v3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v5, v11

    add-float/2addr v4, v5

    div-float/2addr v0, v6

    add-float/2addr v0, v1

    iget v5, v8, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    const/high16 v6, 0x42780000    # 62.0f

    iget v7, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 395
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->fill:Landroid/graphics/Paint;

    const v2, -0xfe1c5d4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v2, v10

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v3, v10

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->big:Landroid/graphics/Paint;

    const v2, -0x830f58

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->small:Landroid/graphics/Paint;

    const v2, -0x191613

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line1:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x41d00000    # 26.0f

    iget v4, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->big:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line2:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x42400000    # 48.0f

    iget v4, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->small:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1a

    .line 403
    :cond_a1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v2, v9

    add-float/2addr v1, v2

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v4, v9

    sub-float/2addr v3, v4

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 404
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->fill:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->ok:Z

    if-eqz v0, :cond_144

    const v0, -0x1fe1c5d4

    :goto_cb
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v1, v10

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v2, v10

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 406
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->fill:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->ok:Z

    if-eqz v0, :cond_148

    const v0, -0xc2237c

    :goto_e4
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v3, v11

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->box:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float v5, v7, v0

    iget v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float v6, v7, v0

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->fill:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 408
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->big:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->ok:Z

    if-eqz v0, :cond_14b

    const v0, -0x830f58

    :goto_112
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->small:Landroid/graphics/Paint;

    const v1, -0x191613

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line1:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v3, v9

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->big:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 412
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line2:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    iget v4, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->d:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->small:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1a

    .line 404
    :cond_144
    const v0, -0x1fd9d5d0

    goto :goto_cb

    .line 406
    :cond_148
    const/16 v0, -0x48b3

    goto :goto_e4

    .line 408
    :cond_14b
    const/16 v0, -0x3380

    goto :goto_112
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 423
    const/4 v0, -0x3

    return v0
.end method

.method set(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->ok:Z

    .line 380
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line1:Ljava/lang/String;

    .line 381
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->line2:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 416
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 419
    return-void
.end method
