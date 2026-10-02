.class public final Lcom/isaigu/gymapp/ai/AutoViews$SetRing;
.super Landroid/view/View;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetRing"
.end annotation


# static fields
.field public static final IDLE:I = 0x4

.field public static final READY:I = 0x2

.field public static final RECOVERY:I = 0x3

.field public static final REST:I = 0x1

.field public static final WORK:I


# instance fields
.field private final arc:Landroid/graphics/Paint;

.field private final big:Landroid/graphics/Paint;

.field private final box:Landroid/graphics/RectF;

.field private count:I

.field private final glow:Landroid/graphics/Paint;

.field private lastMode:I

.field private lastW:I

.field private mode:I

.field private progress:F

.field private final scrim:Landroid/graphics/Paint;

.field private final track:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->scrim:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->lastMode:I

    .line 79
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    const/4 v13, 0x1

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    const/high16 v11, 0x3fc00000    # 1.5f

    const/high16 v12, 0x40000000    # 2.0f

    .line 102
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->getWidth()I

    move-result v6

    .line 103
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->getHeight()I

    move-result v7

    .line 104
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v8, v0

    .line 105
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v9

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    int-to-float v1, v6

    sub-float/2addr v1, v8

    div-float/2addr v1, v12

    mul-float v3, v9, v11

    add-float/2addr v1, v3

    int-to-float v3, v7

    sub-float/2addr v3, v8

    div-float/2addr v3, v12

    mul-float v5, v9, v11

    add-float/2addr v3, v5

    int-to-float v5, v6

    add-float/2addr v5, v8

    div-float/2addr v5, v12

    mul-float v10, v9, v11

    sub-float/2addr v5, v10

    int-to-float v10, v7

    add-float/2addr v10, v8

    div-float/2addr v10, v12

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    invoke-virtual {v0, v1, v3, v5, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x1e

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 110
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->lastW:I

    if-ne v6, v0, :cond_5a

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->lastMode:I

    if-eq v0, v1, :cond_9b

    .line 111
    :cond_5a
    iput v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->lastW:I

    .line 112
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->lastMode:I

    .line 115
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    packed-switch v0, :pswitch_data_148

    .line 133
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 134
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 137
    :goto_69
    new-instance v3, Landroid/graphics/SweepGradient;

    int-to-float v5, v6

    div-float/2addr v5, v12

    int-to-float v10, v7

    div-float/2addr v10, v12

    const/4 v11, 0x3

    new-array v11, v11, [I

    aput v1, v11, v4

    aput v0, v11, v13

    const/4 v1, 0x2

    aput v0, v11, v1

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_154

    invoke-direct {v3, v5, v10, v11, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    int-to-float v1, v6

    div-float/2addr v1, v12

    int-to-float v5, v7

    div-float/2addr v5, v12

    invoke-virtual {v0, v2, v1, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 140
    invoke-virtual {v3, v0}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 144
    :cond_9b
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d1

    .line 145
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->progress:F

    mul-float v3, v0, v1

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_143

    const/16 v0, 0x46

    :goto_b9
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    :cond_d1
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    if-lez v0, :cond_11e

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->scrim:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    int-to-float v0, v6

    div-float/2addr v0, v12

    int-to-float v1, v7

    div-float/2addr v1, v12

    div-float v2, v8, v12

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v3, v9

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->scrim:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    const v1, 0x3ed70a3d    # 0.42f

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 158
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v6

    div-float/2addr v2, v12

    int-to-float v3, v7

    div-float/2addr v3, v12

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v4

    div-float/2addr v0, v12

    sub-float v0, v3, v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    :cond_11e
    return-void

    .line 117
    :pswitch_11f
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    .line 118
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_69

    .line 121
    :pswitch_125
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 122
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto/16 :goto_69

    .line 125
    :pswitch_12b
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 126
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    goto/16 :goto_69

    .line 129
    :pswitch_139
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    aget v1, v0, v13

    .line 130
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    aget v0, v0, v4

    goto/16 :goto_69

    .line 147
    :cond_143
    const/16 v0, 0x28

    goto/16 :goto_b9

    .line 115
    nop

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_11f
        :pswitch_12b
        :pswitch_125
        :pswitch_139
    .end packed-switch

    .line 137
    :array_154
    .array-data 4
        0x0
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public set(FII)V
    .registers 7

    .prologue
    .line 90
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 91
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->progress:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3b03126f    # 0.002f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_23

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    if-ne p2, v1, :cond_23

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    if-ne p3, v1, :cond_23

    .line 98
    :goto_22
    return-void

    .line 94
    :cond_23
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->progress:F

    .line 95
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    .line 96
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    .line 97
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->invalidate()V

    goto :goto_22
.end method
