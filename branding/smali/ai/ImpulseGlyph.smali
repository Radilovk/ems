.class public final Lcom/isaigu/gymapp/ai/ImpulseGlyph;
.super Landroid/graphics/drawable/Drawable;
.source "ImpulseGlyph.java"


# static fields
.field public static final DEPTH:I = 0x4

.field public static final DOUBLE:I = 0x3

.field public static final HEART:I = 0x7

.field public static final HZ:I = 0x0

.field public static final PULSE_PAUSE:I = 0x2

.field public static final RAMP:I = 0x5

.field public static final STRENGTH:I = 0x6

.field public static final TIME:I = 0x1


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final type:I


# direct methods
.method public constructor <init>(IIF)V
    .registers 6

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    .line 32
    iput p1, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->type:I

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 37
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 38
    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;IFFFLandroid/graphics/Paint;)V
    .registers 14

    .prologue
    .line 42
    invoke-virtual {p5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 43
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 45
    packed-switch p1, :pswitch_data_156

    .line 90
    :pswitch_11
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_16a

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 91
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 93
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_176

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 94
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 96
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_182

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 97
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    :goto_3b
    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    return-void

    .line 47
    :pswitch_3f
    const/16 v1, 0xc

    new-array v1, v1, [F

    fill-array-data v1, :array_18e

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 48
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3b

    .line 51
    :pswitch_4d
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p4

    add-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    const v3, 0x3ee147ae    # 0.44f

    mul-float/2addr v3, p4

    invoke-virtual {p0, v1, v2, v3, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_1aa

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 53
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3b

    .line 57
    :pswitch_69
    const/16 v1, 0xc

    new-array v1, v1, [F

    fill-array-data v1, :array_1ba

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 58
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3b

    .line 61
    :pswitch_77
    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_1d6

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 63
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3b

    .line 66
    :pswitch_85
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_202

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 67
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 69
    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_20e

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 70
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 72
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_21e

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 73
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3b

    .line 76
    :pswitch_b0
    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_22a

    invoke-static {v0, p2, p3, p4, v1}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 77
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3b

    .line 80
    :pswitch_bf
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p4

    add-float/2addr v1, p2

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, p4

    add-float/2addr v1, p2

    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, p4

    sub-float v3, p2, v3

    const v4, 0x3eae147b    # 0.34f

    mul-float/2addr v4, p4

    add-float/2addr v4, p3

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, p4

    add-float/2addr v5, p2

    const v6, 0x3e23d70a    # 0.16f

    mul-float/2addr v6, p4

    add-float/2addr v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 82
    const v1, 0x3eae147b    # 0.34f

    mul-float/2addr v1, p4

    add-float/2addr v1, p2

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    const v3, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v3, p4

    add-float/2addr v3, p2

    const v4, 0x3e0f5c29    # 0.14f

    mul-float/2addr v4, p4

    add-float/2addr v4, p3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, p4

    add-float/2addr v5, p2

    const v6, 0x3e8a3d71    # 0.27f

    mul-float/2addr v6, p4

    add-float/2addr v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 83
    const v1, 0x3f07ae14    # 0.53f

    mul-float/2addr v1, p4

    add-float/2addr v1, p2

    const v2, 0x3e0f5c29    # 0.14f

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    const v3, 0x3f28f5c3    # 0.66f

    mul-float/2addr v3, p4

    add-float/2addr v3, p2

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, p4

    add-float/2addr v4, p3

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, p4

    add-float/2addr v5, p2

    const v6, 0x3e23d70a    # 0.16f

    mul-float/2addr v6, p4

    add-float/2addr v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 84
    const v1, 0x3f828f5c    # 1.02f

    mul-float/2addr v1, p4

    add-float/2addr v1, p2

    const v2, 0x3eae147b    # 0.34f

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v3, p4

    add-float/2addr v3, p2

    const v4, 0x3f1eb852    # 0.62f

    mul-float/2addr v4, p4

    add-float/2addr v4, p3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, p4

    add-float/2addr v5, p2

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v6, p4

    add-float/2addr v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 86
    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3b

    .line 45
    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_4d
        :pswitch_69
        :pswitch_77
        :pswitch_85
        :pswitch_b0
        :pswitch_11
        :pswitch_bf
    .end packed-switch

    .line 90
    :array_16a
    .array-data 4
        0x3e3851ec    # 0.18f
        0x3f666666    # 0.9f
        0x3e3851ec    # 0.18f
        0x3f23d70a    # 0.64f
    .end array-data

    .line 93
    :array_176
    .array-data 4
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 96
    :array_182
    .array-data 4
        0x3f51eb85    # 0.82f
        0x3f666666    # 0.9f
        0x3f51eb85    # 0.82f
        0x3df5c28f    # 0.12f
    .end array-data

    .line 47
    :array_18e
    .array-data 4
        0x0
        0x3f1eb852    # 0.62f
        0x3e2e147b    # 0.17f
        0x3e3851ec    # 0.18f
        0x3ec28f5c    # 0.38f
        0x3f51eb85    # 0.82f
        0x3f170a3d    # 0.59f
        0x3e3851ec    # 0.18f
        0x3f4ccccd    # 0.8f
        0x3f51eb85    # 0.82f
        0x3f800000    # 1.0f
        0x3ec28f5c    # 0.38f
    .end array-data

    .line 52
    :array_1aa
    .array-data 4
        0x3f000000    # 0.5f
        0x3e75c28f    # 0.24f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f1eb852    # 0.62f
    .end array-data

    .line 57
    :array_1ba
    .array-data 4
        0x0
        0x3f47ae14    # 0.78f
        0x3dcccccd    # 0.1f
        0x3f47ae14    # 0.78f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3eeb851f    # 0.46f
        0x3e4ccccd    # 0.2f
        0x3eeb851f    # 0.46f
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
        0x3f47ae14    # 0.78f
    .end array-data

    .line 61
    :array_1d6
    .array-data 4
        0x0
        0x3f47ae14    # 0.78f
        0x3d75c28f    # 0.06f
        0x3f47ae14    # 0.78f
        0x3d75c28f    # 0.06f
        0x3e3851ec    # 0.18f
        0x3ed70a3d    # 0.42f
        0x3e3851ec    # 0.18f
        0x3ed70a3d    # 0.42f
        0x3f47ae14    # 0.78f
        0x3f0a3d71    # 0.54f
        0x3f47ae14    # 0.78f
        0x3f0a3d71    # 0.54f
        0x3eeb851f    # 0.46f
        0x3f6b851f    # 0.92f
        0x3eeb851f    # 0.46f
        0x3f6b851f    # 0.92f
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
        0x3f47ae14    # 0.78f
    .end array-data

    .line 66
    :array_202
    .array-data 4
        0x3f000000    # 0.5f
        0x3d75c28f    # 0.06f
        0x3f000000    # 0.5f
        0x3f3d70a4    # 0.74f
    .end array-data

    .line 69
    :array_20e
    .array-data 4
        0x3e8a3d71    # 0.27f
        0x3f051eb8    # 0.52f
        0x3f000000    # 0.5f
        0x3f428f5c    # 0.76f
        0x3f3ae148    # 0.73f
        0x3f051eb8    # 0.52f
    .end array-data

    .line 72
    :array_21e
    .array-data 4
        0x3df5c28f    # 0.12f
        0x3f70a3d7    # 0.94f
        0x3f6147ae    # 0.88f
        0x3f70a3d7    # 0.94f
    .end array-data

    .line 76
    :array_22a
    .array-data 4
        0x0
        0x3f570a3d    # 0.84f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x3f570a3d    # 0.84f
    .end array-data
.end method

.method private static pts(Landroid/graphics/Path;FFF[F)V
    .registers 8

    .prologue
    .line 104
    const/4 v0, 0x0

    aget v0, p4, v0

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    const/4 v1, 0x1

    aget v1, p4, v1

    mul-float/2addr v1, p3

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 105
    const/4 v0, 0x2

    :goto_e
    add-int/lit8 v1, v0, 0x1

    array-length v2, p4

    if-ge v1, v2, :cond_23

    .line 106
    aget v1, p4, v0

    mul-float/2addr v1, p3

    add-float/2addr v1, p1

    add-int/lit8 v2, v0, 0x1

    aget v2, p4, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, p2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    add-int/lit8 v0, v0, 0x2

    goto :goto_e

    .line 108
    :cond_23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 112
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float v4, v1, v2

    .line 114
    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->type:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    div-float/2addr v0, v5

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->draw(Landroid/graphics/Canvas;IFFFLandroid/graphics/Paint;)V

    .line 115
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 129
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 125
    return-void
.end method
