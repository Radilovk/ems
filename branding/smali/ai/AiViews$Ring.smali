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
    .registers 5

    .line 112
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

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
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    .line 105
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    .line 106
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    .line 107
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->color:I

    .line 108
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->gradient:Z

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    iput p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    .line 114
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    iget p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    sget p2, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v0, 0x1c

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 118
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    iget p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 121
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    iget p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v0, 0x3ee66666    # 0.45f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    sget p2, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    const/16 v0, 0x70

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 125
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    iget p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v0, 0x3eb33333    # 0.35f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    sget p2, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    return-void
.end method

.method private static clamp(F)F
    .registers 2

    .line 201
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    .line 155
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 157
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v5, 0x3fcccccd    # 1.6f

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    .line 158
    sub-float v4, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 159
    sub-float v6, v2, v3

    div-float/2addr v6, v5

    .line 160
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    add-float v8, v4, v3

    add-float v9, v6, v3

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    nop

    .line 163
    nop

    .line 164
    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget-object v15, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    const/high16 v12, 0x43070000    # 135.0f

    const/high16 v13, 0x43870000    # 270.0f

    const/4 v14, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 165
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    const/4 v6, 0x0

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43870000    # 270.0f

    cmpl-float v9, v4, v6

    if-ltz v9, :cond_8b

    iget v9, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    cmpl-float v4, v9, v4

    if-lez v4, :cond_8b

    .line 166
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v9, 0x3f8ccccd    # 1.1f

    mul-float v4, v4, v9

    .line 167
    new-instance v10, Landroid/graphics/RectF;

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v4

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v4

    iget-object v12, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v4

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v4

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 169
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->clamp(F)F

    move-result v4

    mul-float v4, v4, v8

    add-float v11, v4, v7

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->clamp(F)F

    move-result v4

    iget v9, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->clamp(F)F

    move-result v9

    sub-float/2addr v4, v9

    mul-float v12, v4, v8

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    :cond_8b
    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->gradient:Z

    if-eqz v4, :cond_ce

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiViews;->heatGradient()[I

    move-result-object v4

    .line 175
    new-instance v9, Landroid/graphics/SweepGradient;

    div-float v10, v1, v5

    div-float v11, v2, v5

    const/4 v12, 0x5

    new-array v13, v12, [I

    const/4 v14, 0x0

    aget v15, v4, v14

    aput v15, v13, v14

    const/4 v14, 0x1

    aget v15, v4, v14

    aput v15, v13, v14

    const/4 v14, 0x2

    aget v15, v4, v14

    aput v15, v13, v14

    const/4 v14, 0x3

    aget v15, v4, v14

    aput v15, v13, v14

    const/4 v15, 0x4

    aget v4, v4, v14

    aput v4, v13, v15

    new-array v4, v12, [F

    fill-array-data v4, :array_144

    invoke-direct {v9, v10, v11, v13, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 178
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    invoke-virtual {v4, v7, v10, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 180
    invoke-virtual {v9, v4}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 181
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 182
    goto :goto_db

    .line 183
    :cond_ce
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 184
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    iget v9, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->color:I

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    :goto_db
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->value:F

    const v9, 0x3a83126f    # 0.001f

    cmpl-float v9, v4, v9

    if-lez v9, :cond_f2

    .line 187
    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    mul-float v13, v4, v8

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    const/high16 v12, 0x43070000    # 135.0f

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 189
    :cond_f2
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_142

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_142

    .line 190
    mul-float v4, v4, v8

    add-float/2addr v4, v7

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 191
    div-float/2addr v3, v5

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v8, 0x3f666666    # 0.9f

    mul-float v9, v4, v8

    sub-float v9, v3, v9

    .line 192
    mul-float v4, v4, v8

    add-float/2addr v3, v4

    .line 193
    div-float/2addr v1, v5

    .line 194
    div-float/2addr v2, v5

    .line 195
    float-to-double v4, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    double-to-float v8, v8

    add-float v10, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    double-to-float v4, v4

    add-float v11, v2, v4

    float-to-double v3, v3

    .line 196
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v3

    double-to-float v5, v8

    add-float v12, v1, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-float v1, v3

    add-float v13, v2, v1

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    .line 195
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    :cond_142
    return-void

    nop

    :array_144
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

    .line 143
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    .line 144
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 145
    return-void
.end method

.method setColor(IZ)V
    .registers 3

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
    .registers 3

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->value:F

    .line 133
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 134
    return-void
.end method
