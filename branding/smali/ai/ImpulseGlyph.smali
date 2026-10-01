.class public final Lcom/isaigu/gymapp/ai/ImpulseGlyph;
.super Landroid/graphics/drawable/Drawable;
.source "ImpulseGlyph.java"


# static fields
.field public static final DEPTH:I = 0x4

.field public static final DOUBLE:I = 0x3

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
    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    .line 31
    iput p1, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->type:I

    .line 32
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 37
    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;IFFFLandroid/graphics/Paint;)V
    .registers 12

    .prologue
    const/16 v2, 0xc

    const/4 v5, 0x6

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x4

    .line 41
    invoke-virtual {p5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 42
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 44
    packed-switch p1, :pswitch_data_b8

    .line 79
    new-array v2, v3, [F

    fill-array-data v2, :array_c8

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 80
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 81
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 82
    new-array v2, v3, [F

    fill-array-data v2, :array_d4

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 83
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 85
    new-array v2, v3, [F

    fill-array-data v2, :array_e0

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 86
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    :goto_3e
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    return-void

    .line 46
    :pswitch_42
    new-array v2, v2, [F

    fill-array-data v2, :array_ec

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 47
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3e

    .line 50
    :pswitch_4e
    mul-float v2, p4, v4

    add-float/2addr v2, p2

    mul-float v3, p4, v4

    add-float/2addr v3, p3

    const v4, 0x3ee147ae    # 0.44f

    mul-float/2addr v4, p4

    invoke-virtual {p0, v2, v3, v4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51
    new-array v2, v5, [F

    fill-array-data v2, :array_108

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 52
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3e

    .line 56
    :pswitch_67
    new-array v2, v2, [F

    fill-array-data v2, :array_118

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 57
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3e

    .line 60
    :pswitch_73
    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_134

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 62
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3e

    .line 65
    :pswitch_81
    new-array v2, v3, [F

    fill-array-data v2, :array_160

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 66
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 68
    new-array v2, v5, [F

    fill-array-data v2, :array_16c

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 69
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 70
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 71
    new-array v2, v3, [F

    fill-array-data v2, :array_17c

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 72
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3e

    .line 75
    :pswitch_a9
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_188

    invoke-static {v1, p2, p3, p4, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->pts(Landroid/graphics/Path;FFF[F)V

    .line 76
    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3e

    .line 44
    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_42
        :pswitch_4e
        :pswitch_67
        :pswitch_73
        :pswitch_81
        :pswitch_a9
    .end packed-switch

    .line 79
    :array_c8
    .array-data 4
        0x3e3851ec    # 0.18f
        0x3f666666    # 0.9f
        0x3e3851ec    # 0.18f
        0x3f23d70a    # 0.64f
    .end array-data

    .line 82
    :array_d4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 85
    :array_e0
    .array-data 4
        0x3f51eb85    # 0.82f
        0x3f666666    # 0.9f
        0x3f51eb85    # 0.82f
        0x3df5c28f    # 0.12f
    .end array-data

    .line 46
    :array_ec
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

    .line 51
    :array_108
    .array-data 4
        0x3f000000    # 0.5f
        0x3e75c28f    # 0.24f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f1eb852    # 0.62f
    .end array-data

    .line 56
    :array_118
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

    .line 60
    :array_134
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

    .line 65
    :array_160
    .array-data 4
        0x3f000000    # 0.5f
        0x3d75c28f    # 0.06f
        0x3f000000    # 0.5f
        0x3f3d70a4    # 0.74f
    .end array-data

    .line 68
    :array_16c
    .array-data 4
        0x3e8a3d71    # 0.27f
        0x3f051eb8    # 0.52f
        0x3f000000    # 0.5f
        0x3f428f5c    # 0.76f
        0x3f3ae148    # 0.73f
        0x3f051eb8    # 0.52f
    .end array-data

    .line 71
    :array_17c
    .array-data 4
        0x3df5c28f    # 0.12f
        0x3f70a3d7    # 0.94f
        0x3f6147ae    # 0.88f
        0x3f70a3d7    # 0.94f
    .end array-data

    .line 75
    :array_188
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
    .line 93
    const/4 v0, 0x0

    aget v0, p4, v0

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    const/4 v1, 0x1

    aget v1, p4, v1

    mul-float/2addr v1, p3

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 94
    const/4 v0, 0x2

    :goto_e
    add-int/lit8 v1, v0, 0x1

    array-length v2, p4

    if-ge v1, v2, :cond_23

    .line 95
    aget v1, p4, v0

    mul-float/2addr v1, p3

    add-float/2addr v1, p1

    add-int/lit8 v2, v0, 0x1

    aget v2, p4, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, p2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    add-int/lit8 v0, v0, 0x2

    goto :goto_e

    .line 97
    :cond_23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 101
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 102
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

    .line 103
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

    .line 104
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 118
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 114
    return-void
.end method
