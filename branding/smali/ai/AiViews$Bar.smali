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
    .registers 4

    .line 279
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->back:Landroid/graphics/Paint;

    .line 272
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->fill:Landroid/graphics/Paint;

    .line 273
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->mark:Landroid/graphics/Paint;

    .line 275
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->marker:F

    .line 276
    sget p1, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->color:I

    .line 280
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->back:Landroid/graphics/Paint;

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->mark:Landroid/graphics/Paint;

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    return-void
.end method

.method private static lightenAlpha(I)I
    .registers 2

    .line 314
    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, -0x34000000    # -3.3554432E7f

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->getHeight()I

    move-result v3

    int-to-float v11, v3

    .line 299
    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v11, v12

    .line 300
    new-instance v3, Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-direct {v3, v14, v14, v2, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->back:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v13, v13, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 301
    iget v3, v0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->value:F

    cmpl-float v3, v3, v14

    if-lez v3, :cond_4f

    .line 302
    iget-object v15, v0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->fill:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->color:I

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->lightenAlpha(I)I

    move-result v9

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v10

    move v6, v2

    move-object v12, v10

    move-object/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 304
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->value:F

    mul-float v4, v4, v2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {v3, v14, v14, v4, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v13, v13, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 306
    :cond_4f
    iget v3, v0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->marker:F

    cmpl-float v4, v3, v14

    if-ltz v4, :cond_7e

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_7e

    .line 307
    mul-float v3, v3, v2

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v2, v2, v4

    .line 309
    div-float v4, v2, v4

    sub-float v5, v3, v4

    neg-float v6, v2

    add-float/2addr v4, v3

    add-float v7, v11, v2

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->mark:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 311
    :cond_7e
    return-void
.end method

.method set(FI)V
    .registers 4

    .line 285
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->value:F

    .line 286
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->color:I

    .line 287
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->invalidate()V

    .line 288
    return-void
.end method

.method setMarker(F)V
    .registers 2

    .line 291
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Bar;->marker:F

    .line 292
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->invalidate()V

    .line 293
    return-void
.end method
