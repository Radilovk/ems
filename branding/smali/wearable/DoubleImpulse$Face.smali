.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;
.super Landroid/graphics/drawable/Drawable;
.source "DoubleImpulse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Face"
.end annotation


# static fields
.field static final NONE:I = -0x1

.field static final OFF:I = 0x0

.field static final ON:I = 0x1

.field static final SETUP:I = 0x2


# instance fields
.field final d:F

.field final fill:Landroid/graphics/Paint;

.field flash:F

.field final glyph:Landroid/graphics/Paint;

.field hold:F

.field left:F

.field final line:Landroid/graphics/Paint;

.field mode:I

.field final oval:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(F)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 743
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 734
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->fill:Landroid/graphics/Paint;

    .line 735
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    .line 736
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    .line 737
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    .line 738
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    .line 744
    iput p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    .line 745
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 746
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 747
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 748
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 749
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 750
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    const/4 v6, 0x0

    const/16 v2, -0x3ef9

    const/high16 v12, 0x3fc00000    # 1.5f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 753
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    .line 755
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 756
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v1, v12

    sub-float v9, v0, v1

    .line 757
    cmpg-float v0, v9, v10

    if-gtz v0, :cond_2c

    .line 796
    :cond_2b
    :goto_2b
    return-void

    .line 760
    :cond_2c
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v0, v1

    sub-float v3, v9, v0

    .line 761
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_166

    :cond_3d
    const/4 v0, 0x1

    .line 762
    :goto_3e
    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_50

    .line 763
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->fill:Landroid/graphics/Paint;

    const v4, 0x44ffc107

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 764
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 766
    :cond_50
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->fill:Landroid/graphics/Paint;

    if-eqz v0, :cond_169

    move v1, v2

    :goto_55
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 767
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 768
    if-nez v0, :cond_7e

    .line 769
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 770
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 771
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v4, v11

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 772
    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 774
    :cond_7e
    const v1, 0x3f933333    # 1.15f

    mul-float v4, v3, v1

    .line 775
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    if-eqz v0, :cond_8a

    const v2, -0xc5d600

    :cond_8a
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 776
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    const v1, 0x3fcccccd    # 1.6f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v1, v2

    const v2, 0x3dae147b    # 0.085f

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 777
    const/4 v1, 0x3

    div-float v0, v4, v11

    sub-float v2, v7, v0

    div-float v0, v4, v11

    sub-float v3, v8, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->draw(Landroid/graphics/Canvas;IFFFLandroid/graphics/Paint;)V

    .line 778
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    sub-float v1, v7, v9

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v2, v12

    add-float/2addr v1, v2

    sub-float v2, v8, v9

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    add-float v3, v7, v9

    iget v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v4, v12

    sub-float/2addr v3, v4

    add-float v4, v8, v9

    iget v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v5, v12

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 779
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 780
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_105

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->left:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_105

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->hold:F

    cmpg-float v0, v0, v10

    if-gtz v0, :cond_105

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    cmpg-float v0, v0, v10

    if-gtz v0, :cond_105

    .line 781
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const v1, -0xbc5fb9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 782
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->left:F

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 784
    :cond_105
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->hold:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_135

    .line 785
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const v1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 786
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 787
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 788
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->hold:F

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 790
    :cond_135
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2b

    .line 791
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const v1, -0xbc5fb9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 792
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 793
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 794
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_2b

    :cond_166
    move v0, v6

    .line 761
    goto/16 :goto_3e

    .line 766
    :cond_169
    const v1, -0xd9d9da

    goto/16 :goto_55
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 805
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 799
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 802
    return-void
.end method
