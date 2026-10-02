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

.field private centerBig:Ljava/lang/String;

.field private centerColor:I

.field private centerSmall:Ljava/lang/String;

.field private count:I

.field private final glow:Landroid/graphics/Paint;

.field private lastMode:I

.field private lastW:I

.field private mode:I

.field private progress:F

.field private final scrim:Landroid/graphics/Paint;

.field private final small:Landroid/graphics/Paint;

.field private final track:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 99
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

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->small:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->small:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->small:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    const v6, -0xdd3aa2

    const/4 v4, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v12, 0x3fc00000    # 1.5f

    const/high16 v13, 0x40000000    # 2.0f

    .line 125
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->getWidth()I

    move-result v7

    .line 126
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->getHeight()I

    move-result v8

    .line 127
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v9, v0

    .line 128
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v10

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    int-to-float v1, v7

    sub-float/2addr v1, v9

    div-float/2addr v1, v13

    mul-float v3, v10, v12

    add-float/2addr v1, v3

    int-to-float v3, v8

    sub-float/2addr v3, v9

    div-float/2addr v3, v13

    mul-float v5, v10, v12

    add-float/2addr v3, v5

    int-to-float v5, v7

    add-float/2addr v5, v9

    div-float/2addr v5, v13

    mul-float v11, v10, v12

    sub-float/2addr v5, v11

    int-to-float v11, v8

    add-float/2addr v11, v9

    div-float/2addr v11, v13

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    invoke-virtual {v0, v1, v3, v5, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x1e

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->track:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 133
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->lastW:I

    if-ne v7, v0, :cond_5c

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->lastMode:I

    if-eq v0, v1, :cond_9e

    .line 134
    :cond_5c
    iput v7, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->lastW:I

    .line 135
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->lastMode:I

    .line 138
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    packed-switch v0, :pswitch_data_18e

    .line 156
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 157
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 160
    :goto_6b
    new-instance v3, Landroid/graphics/SweepGradient;

    int-to-float v5, v7

    div-float/2addr v5, v13

    int-to-float v11, v8

    div-float/2addr v11, v13

    const/4 v12, 0x3

    new-array v12, v12, [I

    aput v1, v12, v4

    const/4 v1, 0x1

    aput v0, v12, v1

    const/4 v1, 0x2

    aput v0, v12, v1

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_19a

    invoke-direct {v3, v5, v11, v12, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 161
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 162
    int-to-float v1, v7

    div-float/2addr v1, v13

    int-to-float v5, v8

    div-float/2addr v5, v13

    invoke-virtual {v0, v2, v1, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 163
    invoke-virtual {v3, v0}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    :cond_9e
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d4

    .line 168
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->progress:F

    mul-float v3, v0, v1

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    mul-float/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_189

    const/16 v0, 0x46

    :goto_bc
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->glow:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->box:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->arc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    :cond_d4
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    if-gtz v0, :cond_120

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerBig:Ljava/lang/String;

    if-eqz v0, :cond_120

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    const v1, 0x3e851eb8    # 0.26f

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerBig:Ljava/lang/String;

    int-to-float v1, v7

    div-float/2addr v1, v13

    int-to-float v2, v8

    div-float/2addr v2, v13

    const v3, 0x3d75c28f    # 0.06f

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerSmall:Ljava/lang/String;

    if-eqz v0, :cond_120

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->small:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->small:Landroid/graphics/Paint;

    const v1, 0x3d99999a    # 0.075f

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerSmall:Ljava/lang/String;

    int-to-float v1, v7

    div-float/2addr v1, v13

    int-to-float v2, v8

    div-float/2addr v2, v13

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->small:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    :cond_120
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    if-lez v0, :cond_16b

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->scrim:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    int-to-float v0, v7

    div-float/2addr v0, v13

    int-to-float v1, v8

    div-float/2addr v1, v13

    div-float v2, v9, v13

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v3, v10

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->scrim:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    const v1, 0x3ed70a3d    # 0.42f

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 191
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v7

    div-float/2addr v2, v13

    int-to-float v3, v8

    div-float/2addr v3, v13

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v4

    div-float/2addr v0, v13

    sub-float v0, v3, v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->big:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    :cond_16b
    return-void

    .line 140
    :pswitch_16c
    const/16 v1, -0x58da

    .line 141
    const v0, -0xc2d2

    .line 142
    goto/16 :goto_6b

    .line 144
    :pswitch_173
    const v1, -0xcb2c67

    move v0, v6

    .line 146
    goto/16 :goto_6b

    .line 148
    :pswitch_179
    const v1, -0x533eb

    .line 149
    const v0, -0xa61f5

    .line 150
    goto/16 :goto_6b

    .line 152
    :pswitch_181
    const v1, -0x9f5a06

    .line 153
    const v0, -0xdd2c12

    .line 154
    goto/16 :goto_6b

    .line 170
    :cond_189
    const/16 v0, 0x28

    goto/16 :goto_bc

    .line 138
    nop

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_16c
        :pswitch_179
        :pswitch_173
        :pswitch_181
    .end packed-switch

    .line 160
    :array_19a
    .array-data 4
        0x0
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public set(FII)V
    .registers 7

    .prologue
    .line 113
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 114
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

    .line 121
    :goto_22
    return-void

    .line 117
    :cond_23
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->progress:F

    .line 118
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->mode:I

    .line 119
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->count:I

    .line 120
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->invalidate()V

    goto :goto_22
.end method

.method public setCenter(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-nez p1, :cond_1a

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerBig:Ljava/lang/String;

    if-nez v2, :cond_18

    move v2, v0

    .line 88
    :goto_9
    if-nez p2, :cond_23

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerSmall:Ljava/lang/String;

    if-nez v3, :cond_21

    .line 89
    :goto_f
    if-eqz v2, :cond_2a

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerColor:I

    if-ne p3, v0, :cond_2a

    .line 96
    :goto_17
    return-void

    :cond_18
    move v2, v1

    .line 87
    goto :goto_9

    :cond_1a
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerBig:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_9

    :cond_21
    move v0, v1

    .line 88
    goto :goto_f

    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerSmall:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f

    .line 92
    :cond_2a
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerBig:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerSmall:Ljava/lang/String;

    .line 94
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->centerColor:I

    .line 95
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->invalidate()V

    goto :goto_17
.end method
