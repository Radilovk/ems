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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field private progress:F

.field private final radius:F

.field private final seg:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 157
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->seg:Landroid/graphics/Paint;

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->dim:Landroid/graphics/Paint;

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->cursor:Landroid/graphics/Paint;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->colors:Ljava/util/List;

    .line 153
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->progress:F

    .line 158
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->radius:F

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->dim:Landroid/graphics/Paint;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->cursor:Landroid/graphics/Paint;

    const v1, -0xd0b08

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    return-void
.end method

.method private static lighten(I)I
    .registers 5

    .prologue
    const/16 v3, 0xff

    .line 203
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x28

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x28

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 205
    and-int/lit16 v2, p0, 0xff

    add-int/lit8 v2, v2, 0x28

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 206
    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->getWidth()I

    move-result v0

    int-to-float v9, v0

    .line 184
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->getHeight()I

    move-result v0

    int-to-float v10, v0

    .line 185
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v11, v0, v1

    .line 186
    const/4 v0, 0x0

    move v8, v0

    :goto_1a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_80

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 188
    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float v2, v1, v9

    if-lez v8, :cond_7c

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    :goto_35
    add-float/2addr v1, v2

    .line 189
    const/4 v2, 0x1

    aget v0, v0, v2

    mul-float v2, v0, v9

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_7e

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v11, v0

    :goto_49
    sub-float v3, v2, v0

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->colors:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 191
    iget-object v12, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->seg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->lighten(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 192
    new-instance v0, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->radius:F

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->radius:F

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->seg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1a

    .line 188
    :cond_7c
    const/4 v1, 0x0

    goto :goto_35

    .line 189
    :cond_7e
    const/4 v0, 0x0

    goto :goto_49

    .line 194
    :cond_80
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c9

    .line 195
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->progress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v9

    .line 196
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->radius:F

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->radius:F

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->dim:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 197
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    .line 198
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sub-float v3, v0, v3

    neg-float v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    add-float/2addr v0, v5

    add-float v5, v10, v1

    invoke-direct {v2, v3, v4, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->cursor:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 200
    :cond_c9
    return-void
.end method

.method setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v2, v0

    .line 167
    const/4 v0, 0x0

    .line 168
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 169
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->parts:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    div-float v7, v1, v2

    aput v7, v5, v6

    iget v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    div-float/2addr v6, v2

    aput v6, v5, v8

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->colors:Ljava/util/List;

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    move v1, v0

    .line 172
    goto :goto_1a

    .line 173
    :cond_4f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->invalidate()V

    .line 174
    return-void
.end method

.method setProgress(F)V
    .registers 2

    .prologue
    .line 177
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->progress:F

    .line 178
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->invalidate()V

    .line 179
    return-void
.end method
