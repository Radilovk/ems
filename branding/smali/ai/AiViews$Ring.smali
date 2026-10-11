.class final Lcom/isaigu/gymapp/ai/AiViews$Ring;
.super Landroid/view/View;
.source "AiViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ring"
.end annotation


# instance fields
.field private final arc:Landroid/graphics/Paint;

.field private final band:Landroid/graphics/Paint;

.field private bandHi:F

.field private bandLo:F

.field private cap:F

.field private color:I

.field private gradient:Z

.field private final oval:Landroid/graphics/RectF;

.field private final stroke:F

.field private final tick:Landroid/graphics/Paint;

.field private final track:Landroid/graphics/Paint;

.field private value:F


# direct methods
.method constructor <init>(Landroid/content/Context;F)V
    .registers 6

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    .line 104
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    .line 105
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    .line 106
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    .line 107
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->color:I

    .line 108
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->gradient:Z

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    const/16 v2, 0x70

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    return-void
.end method

.method private static clamp(F)F
    .registers 3

    .prologue
    .line 201
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->getWidth()I

    move-result v0

    int-to-float v10, v0

    .line 156
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->getHeight()I

    move-result v0

    int-to-float v11, v0

    .line 157
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v1, v2

    sub-float v12, v0, v1

    .line 158
    sub-float v0, v10, v12

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 159
    sub-float v1, v11, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 160
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    add-float v3, v0, v12

    add-float v4, v1, v12

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    const/high16 v2, 0x43070000    # 135.0f

    .line 163
    const/high16 v3, 0x43870000    # 270.0f

    .line 164
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 165
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_84

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_84

    .line 166
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    .line 167
    new-instance v5, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v7, v0

    invoke-direct {v5, v1, v4, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 169
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->clamp(F)F

    move-result v0

    mul-float/2addr v0, v3

    add-float v6, v2, v0

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->clamp(F)F

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->clamp(F)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float v7, v3, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    :cond_84
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->gradient:Z

    if-eqz v0, :cond_14f

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiViews;->heatGradient()[I

    move-result-object v0

    .line 175
    new-instance v1, Landroid/graphics/SweepGradient;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v10, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v0, v8

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v0, v8

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    aget v8, v0, v8

    aput v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x3

    aget v8, v0, v8

    aput v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x3

    aget v0, v0, v8

    aput v0, v6, v7

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_15e

    invoke-direct {v1, v4, v5, v6, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 178
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v10, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 180
    invoke-virtual {v1, v0}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 186
    :goto_d8
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->value:F

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ef

    .line 187
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->value:F

    mul-float v7, v3, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 189
    :cond_ef
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_14e

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_14e

    .line 190
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 191
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v12, v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 192
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v12, v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    add-float v6, v1, v2

    .line 193
    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v10, v1

    .line 194
    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v11, v1

    .line 195
    float-to-double v8, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v1, v8

    add-float/2addr v1, v3

    float-to-double v8, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v0, v8

    add-float v2, v7, v0

    float-to-double v8, v6

    .line 196
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v0, v8

    add-float/2addr v3, v0

    float-to-double v8, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-float v0, v4

    add-float v4, v7, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    move-object v0, p1

    .line 195
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    :cond_14e
    return-void

    .line 183
    :cond_14f
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_d8

    .line 175
    :array_15e
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setBand(FF)V
    .registers 3

    .prologue
    .line 137
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    .line 138
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    .line 139
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 140
    return-void
.end method

.method setCap(F)V
    .registers 2

    .prologue
    .line 143
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    .line 144
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 145
    return-void
.end method

.method setColor(IZ)V
    .registers 3

    .prologue
    .line 148
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->color:I

    .line 149
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->gradient:Z

    .line 150
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 151
    return-void
.end method

.method setValue(F)V
    .registers 4

    .prologue
    .line 132
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->value:F

    .line 133
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 134
    return-void
.end method
