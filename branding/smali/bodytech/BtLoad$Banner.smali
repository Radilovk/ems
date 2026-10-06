.class final Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;
.super Landroid/graphics/drawable/Drawable;
.source "BtLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtLoad;
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

.field private pct:I

.field private final small:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(F)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 219
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 210
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->fill:Landroid/graphics/Paint;

    .line 211
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->big:Landroid/graphics/Paint;

    .line 212
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->small:Landroid/graphics/Paint;

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->box:Landroid/graphics/RectF;

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->line1:Ljava/lang/String;

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->line2:Ljava/lang/String;

    .line 220
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->big:Landroid/graphics/Paint;

    const/high16 v1, 0x41b00000    # 22.0f

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->small:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->small:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 226
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    const v12, -0xb03c09

    const/high16 v11, 0x41600000    # 14.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v9, 0x40400000    # 3.0f

    .line 236
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 237
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1c

    .line 258
    :cond_1b
    :goto_1b
    return-void

    .line 240
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->box:Landroid/graphics/RectF;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->fill:Landroid/graphics/Paint;

    const v1, -0x1fd9d5d0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->box:Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v1, v11

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v2, v11

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->box:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->box:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->box:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v3, v10

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->box:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float v5, v9, v0

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float v6, v9, v0

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->fill:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 245
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 246
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 247
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->big:Landroid/graphics/Paint;

    const v3, -0x7e2b06

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->small:Landroid/graphics/Paint;

    const v3, -0x191613

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->line1:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v3, v11

    sub-float v3, v2, v3

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->big:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->line2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  \u00b7  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->pct:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " %"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41200000    # 10.0f

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->small:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 251
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->box:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x42400000    # 48.0f

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    const/high16 v3, 0x43b40000    # 360.0f

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 252
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v8, v1

    sub-float v1, v0, v1

    .line 253
    const/high16 v0, 0x41b00000    # 22.0f

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->fill:Landroid/graphics/Paint;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    add-float v3, v1, v8

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v0, v10

    add-float v4, v2, v0

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float v5, v9, v0

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float v6, v9, v0

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->fill:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->pct:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    add-float v3, v1, v0

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float/2addr v0, v10

    add-float v4, v2, v0

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float v5, v9, v0

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->d:F

    mul-float v6, v9, v0

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->fill:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1b
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 268
    const/4 v0, -0x3

    return v0
.end method

.method set(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 229
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->line1:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->line2:Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->pct:I

    .line 232
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 261
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 264
    return-void
.end method
