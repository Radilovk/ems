.class final Lcom/isaigu/gymapp/ai/AiViews$Timeline;
.super Landroid/view/View;
.source "AiViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Timeline"
.end annotation


# instance fields
.field private final colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cursor:Landroid/graphics/Paint;

.field private final dim:Landroid/graphics/Paint;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field

.field private progress:F

.field private final radius:F

.field private final seg:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 216
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->seg:Landroid/graphics/Paint;

    .line 208
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->dim:Landroid/graphics/Paint;

    .line 209
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->cursor:Landroid/graphics/Paint;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->colors:Ljava/util/List;

    .line 212
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->progress:F

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->radius:F

    .line 218
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->dim:Landroid/graphics/Paint;

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    const/16 v1, 0x99

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->cursor:Landroid/graphics/Paint;

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    return-void
.end method

.method private static lighten(I)I
    .registers 4

    .line 262
    shr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x28

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 263
    shr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x28

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 264
    and-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x28

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 265
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v4, v4, v5

    .line 245
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1e
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-ge v7, v8, :cond_81

    .line 246
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 247
    aget v11, v8, v6

    mul-float v11, v11, v2

    if-lez v7, :cond_3a

    div-float v12, v4, v9

    goto :goto_3b

    :cond_3a
    const/4 v12, 0x0

    :goto_3b
    add-float/2addr v11, v12

    .line 248
    const/4 v12, 0x1

    aget v8, v8, v12

    mul-float v8, v8, v2

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v12

    if-ge v7, v13, :cond_4d

    div-float v9, v4, v9

    goto :goto_4e

    :cond_4d
    const/4 v9, 0x0

    :goto_4e
    sub-float/2addr v8, v9

    .line 249
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->colors:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 250
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->seg:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/LinearGradient;

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-static/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->lighten(I)I

    move-result v19

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v12

    move v14, v11

    move/from16 v16, v8

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 251
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v11, v10, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v8, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->radius:F

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->seg:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v8, v8, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 245
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 253
    :cond_81
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->progress:F

    cmpl-float v6, v4, v10

    if-ltz v6, :cond_bc

    .line 254
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v4, v4, v2

    .line 255
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4, v10, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->radius:F

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->dim:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v2, v2, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v5

    .line 257
    new-instance v5, Landroid/graphics/RectF;

    div-float v6, v2, v9

    sub-float v7, v4, v6

    neg-float v8, v2

    add-float/2addr v4, v6

    add-float/2addr v3, v2

    invoke-direct {v5, v7, v8, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->cursor:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 259
    :cond_bc
    return-void
.end method

.method setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V
    .registers 10

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 226
    nop

    .line 227
    iget-object p1, p1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 228
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    div-float v7, v2, v0

    aput v7, v5, v6

    iget v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    div-float/2addr v6, v0

    aput v6, v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->colors:Ljava/util/List;

    iget-object v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 231
    goto :goto_1a

    .line 232
    :cond_4e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->invalidate()V

    .line 233
    return-void
.end method

.method setProgress(F)V
    .registers 2

    .line 236
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->progress:F

    .line 237
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->invalidate()V

    .line 238
    return-void
.end method
