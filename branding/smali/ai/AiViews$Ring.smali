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

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    .line 51
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    .line 52
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    .line 53
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    .line 54
    const v0, -0x83b201

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->color:I

    .line 55
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->gradient:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    const v1, 0x14ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    const v1, 0x6632d583

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->band:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    const v1, -0xb2b1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->tick:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 76
    return-void
.end method

.method private static clamp(F)F
    .registers 3

    .prologue
    .line 142
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
    .line 102
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->getWidth()I

    move-result v0

    int-to-float v10, v0

    .line 103
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->getHeight()I

    move-result v0

    int-to-float v11, v0

    .line 104
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v1, v2

    sub-float v12, v0, v1

    .line 105
    sub-float v0, v10, v12

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 106
    sub-float v1, v11, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 107
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    add-float v3, v0, v12

    add-float v4, v1, v12

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    const/high16 v2, 0x43070000    # 135.0f

    .line 110
    const/high16 v3, 0x43870000    # 270.0f

    .line 111
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->track:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 112
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_84

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_84

    .line 113
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    .line 114
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

    .line 116
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

    .line 119
    :cond_84
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->gradient:Z

    if-eqz v0, :cond_118

    .line 120
    new-instance v0, Landroid/graphics/SweepGradient;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_128

    const/4 v6, 0x0

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 122
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    :goto_a1
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->value:F

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b8

    .line 128
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->value:F

    mul-float v7, v3, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 130
    :cond_b8
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_117

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_117

    .line 131
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 132
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v12, v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 133
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v12, v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->stroke:F

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    add-float v6, v1, v2

    .line 134
    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v10, v1

    .line 135
    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v11, v1

    .line 136
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

    .line 137
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

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    :cond_117
    return-void

    .line 124
    :cond_118
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->arc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_a1

    .line 120
    nop

    :array_128
    .array-data 4
        -0xff2e01
        -0x83b201
        -0x1fbf05
        -0xff2e01
    .end array-data
.end method

.method setBand(FF)V
    .registers 3

    .prologue
    .line 84
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandLo:F

    .line 85
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->bandHi:F

    .line 86
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 87
    return-void
.end method

.method setCap(F)V
    .registers 2

    .prologue
    .line 90
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->cap:F

    .line 91
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 92
    return-void
.end method

.method setColor(IZ)V
    .registers 3

    .prologue
    .line 95
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->color:I

    .line 96
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->gradient:Z

    .line 97
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 98
    return-void
.end method

.method setValue(F)V
    .registers 4

    .prologue
    .line 79
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiViews$Ring;->value:F

    .line 80
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->invalidate()V

    .line 81
    return-void
.end method
