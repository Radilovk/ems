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
.field private static final AHEAD_MS:J = 0x2bcL

.field public static final IDLE:I = 0x4

.field public static final READY:I = 0x2

.field public static final RECOVERY:I = 0x3

.field public static final REST:I = 0x1

.field public static final WORK:I


# instance fields
.field private final arc:Landroid/graphics/Paint;

.field private final big:Landroid/graphics/Paint;

.field private final box:Landroid/graphics/RectF;

.field private colA:I

.field private colB:I

.field private count:I

.field private final glow:Landroid/graphics/Paint;

.field private mode:I

.field private progress:F

.field private rate:F

.field private final rot:Landroid/graphics/Matrix;

.field private final scrim:Landroid/graphics/Paint;

.field private setMs:J

.field private shown:F

.field private final track:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 113
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->scrim:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->rot:Landroid/graphics/Matrix;

    .line 108
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 121
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colors(I)V

    .line 122
    return-void
.end method

.method private colors(I)V
    .registers 5

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_3e

    .line 169
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colA:I

    .line 170
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colB:I

    .line 173
    :goto_b
    return-void

    .line 153
    :pswitch_c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colA:I

    .line 154
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colB:I

    goto :goto_b

    .line 157
    :pswitch_15
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colA:I

    .line 158
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colB:I

    goto :goto_b

    .line 161
    :pswitch_1e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colA:I

    .line 162
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colB:I

    goto :goto_b

    .line 165
    :pswitch_2f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colA:I

    .line 166
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colB:I

    goto :goto_b

    .line 151
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1e
        :pswitch_15
        :pswitch_2f
    .end packed-switch
.end method

.method private now()F
    .registers 9

    .prologue
    .line 177
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->progress:F

    .line 178
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->rate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_24

    .line 179
    const-wide/16 v2, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->setMs:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 180
    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->rate:F

    long-to-float v2, v2

    mul-float/2addr v2, v4

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 182
    :cond_24
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->shown:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2c

    .line 183
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->shown:F

    .line 185
    :cond_2c
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->shown:F

    .line 186
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 21

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->getWidth()I

    move-result v8

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->getHeight()I

    move-result v9

    .line 193
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v10, v2

    .line 194
    const/high16 v2, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    const v3, 0x3d2c0831    # 0.042f

    mul-float/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 195
    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v11

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    int-to-float v4, v8

    sub-float/2addr v4, v10

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v2

    int-to-float v5, v9

    sub-float/2addr v5, v10

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    int-to-float v6, v8

    add-float/2addr v6, v10

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v6, v2

    int-to-float v7, v9

    add-float/2addr v7, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v7, v12

    sub-float v2, v7, v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x1e

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->now()F

    move-result v12

    .line 201
    const v2, 0x3a83126f    # 0.001f

    cmpl-float v2, v12, v2

    if-lez v2, :cond_147

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 205
    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v3, v11

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v3, v2

    .line 206
    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_1d6

    const/4 v2, 0x1

    move v4, v2

    .line 207
    :goto_95
    if-eqz v4, :cond_1da

    const/high16 v5, 0x43b40000    # 360.0f

    .line 208
    :goto_99
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 209
    const v2, 0x3f7fbe77    # 0.999f

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v6

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v7, v13

    add-float/2addr v7, v6

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 210
    if-eqz v4, :cond_1e0

    .line 211
    new-instance v2, Landroid/graphics/SweepGradient;

    int-to-float v6, v8

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    int-to-float v7, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v7, v13

    const/4 v13, 0x3

    new-array v13, v13, [I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colA:I

    aput v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colB:I

    aput v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colA:I

    aput v15, v13, v14

    const/4 v14, 0x3

    new-array v14, v14, [F

    fill-array-data v14, :array_266

    invoke-direct {v2, v6, v7, v13, v14}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 214
    :goto_e1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->rot:Landroid/graphics/Matrix;

    const/high16 v7, -0x3d4c0000    # -90.0f

    if-eqz v4, :cond_ea

    const/4 v3, 0x0

    :cond_ea
    sub-float v3, v7, v3

    int-to-float v7, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v7, v13

    int-to-float v13, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    invoke-virtual {v6, v3, v7, v13}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->rot:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    const v3, 0x4019999a    # 2.4f

    mul-float/2addr v3, v11

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    sget-boolean v2, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v2, :cond_23f

    const/16 v2, 0x46

    :goto_121
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 221
    if-eqz v4, :cond_243

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 229
    :cond_147
    :goto_147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    if-lez v2, :cond_1b4

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->scrim:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    int-to-float v2, v8

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v3, v9

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v10, v4

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v5, v11

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->scrim:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    const v3, 0x3ed70a3d    # 0.42f

    mul-float/2addr v3, v10

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 235
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v8

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v9

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v2, v5, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 237
    :cond_1b4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->rate:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d5

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v12, v2

    if-gez v2, :cond_1d5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->setMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2bc

    cmp-long v2, v2, v4

    if-gez v2, :cond_1d5

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->postInvalidateOnAnimation()V

    .line 240
    :cond_1d5
    return-void

    .line 206
    :cond_1d6
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_95

    .line 207
    :cond_1da
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v5, v2, v12

    goto/16 :goto_99

    .line 212
    :cond_1e0
    new-instance v2, Landroid/graphics/SweepGradient;

    int-to-float v13, v8

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    int-to-float v14, v9

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/4 v15, 0x4

    new-array v15, v15, [I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colA:I

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colB:I

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colB:I

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colA:I

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    const/16 v17, 0x1

    const v18, 0x3f7f7cee    # 0.998f

    .line 213
    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v16, v17

    const/4 v6, 0x2

    aput v7, v16, v6

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v16, v6

    move-object/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto/16 :goto_e1

    .line 219
    :cond_23f
    const/16 v2, 0x28

    goto/16 :goto_121

    .line 225
    :cond_243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_147

    .line 211
    nop

    :array_266
    .array-data 4
        0x0
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public set(FII)V
    .registers 5

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->set(FIIF)V

    .line 126
    return-void
.end method

.method public set(FIIF)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 134
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 136
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    if-ne p2, v1, :cond_1d

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->shown:F

    const v4, 0x3cf5c28f    # 0.03f

    sub-float/2addr v1, v4

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1f

    .line 137
    :cond_1d
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->shown:F

    .line 139
    :cond_1f
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    if-eq p2, v1, :cond_26

    .line 140
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->colors(I)V

    .line 142
    :cond_26
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->progress:F

    .line 143
    invoke-static {v5, p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->rate:F

    .line 144
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->setMs:J

    .line 145
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    .line 146
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    .line 147
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->invalidate()V

    .line 148
    return-void
.end method
