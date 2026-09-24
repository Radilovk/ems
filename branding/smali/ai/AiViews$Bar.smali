.class final Lcom/isaigu/gymapp/ai/AiViews$Bar;
.super Landroid/view/View;
.source "AiViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bar"
.end annotation


# instance fields
.field private final back:Landroid/graphics/Paint;

.field private color:I

.field private final fill:Landroid/graphics/Paint;

.field private final mark:Landroid/graphics/Paint;

.field private marker:F

.field private value:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 279
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->back:Landroid/graphics/Paint;

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->fill:Landroid/graphics/Paint;

    .line 273
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->mark:Landroid/graphics/Paint;

    .line 275
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->marker:F

    .line 276
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->color:I

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->back:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->mark:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    return-void
.end method

.method private static lightenAlpha(I)I
    .registers 3

    .prologue
    .line 314
    const v0, 0xffffff

    and-int/2addr v0, p0

    const/high16 v1, -0x34000000    # -3.3554432E7f

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 297
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 298
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->getHeight()I

    move-result v0

    int-to-float v8, v0

    .line 299
    div-float v9, v8, v11

    .line 300
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v3, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->back:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 301
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->value:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_46

    .line 302
    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->fill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->color:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->color:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->lightenAlpha(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 304
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->value:F

    mul-float/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v0, v1, v1, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 306
    :cond_46
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->marker:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_72

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->marker:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_72

    .line 307
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->marker:F

    mul-float/2addr v0, v3

    .line 308
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v11, v1

    .line 309
    div-float v1, v4, v11

    sub-float v1, v0, v1

    neg-float v2, v4

    div-float v3, v4, v11

    add-float/2addr v3, v0

    add-float/2addr v4, v8

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->mark:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 311
    :cond_72
    return-void
.end method

.method set(FI)V
    .registers 5

    .prologue
    .line 285
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->value:F

    .line 286
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->color:I

    .line 287
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->invalidate()V

    .line 288
    return-void
.end method

.method setMarker(F)V
    .registers 2

    .prologue
    .line 291
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->marker:F

    .line 292
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->invalidate()V

    .line 293
    return-void
.end method
