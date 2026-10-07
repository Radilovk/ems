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

    .line 920
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 911
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->fill:Landroid/graphics/Paint;

    .line 912
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    .line 913
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    .line 914
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    .line 921
    iput p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    .line 922
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 923
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 924
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 925
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 926
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 927
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    const/high16 v12, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    const v2, -0xd5f00

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 930
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    .line 932
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 933
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v11

    .line 934
    cmpg-float v0, v9, v10

    if-gtz v0, :cond_29

    .line 970
    :cond_28
    :goto_28
    return-void

    .line 937
    :cond_29
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_151

    :cond_33
    const/4 v0, 0x1

    .line 938
    :goto_34
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->fill:Landroid/graphics/Paint;

    if-eqz v0, :cond_154

    move v1, v2

    :goto_39
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 939
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 940
    if-nez v0, :cond_5e

    .line 941
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 942
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/high16 v3, 0x40200000    # 2.5f

    iget v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 943
    const/high16 v1, 0x3fa00000    # 1.25f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v1, v3

    sub-float v1, v9, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 945
    :cond_5e
    const v1, 0x3f8ccccd    # 1.1f

    mul-float v4, v9, v1

    .line 946
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    if-eqz v0, :cond_68

    const/4 v2, -0x1

    :cond_68
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 947
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v1, v11

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 948
    const/4 v1, 0x3

    div-float v0, v4, v11

    sub-float v2, v7, v0

    div-float v0, v4, v11

    sub-float v3, v8, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->glyph:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->draw(Landroid/graphics/Canvas;IFFFLandroid/graphics/Paint;)V

    .line 949
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v0, v1

    .line 950
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    sub-float v2, v7, v9

    add-float/2addr v2, v0

    sub-float v3, v8, v9

    add-float/2addr v3, v0

    add-float v4, v7, v9

    sub-float/2addr v4, v0

    add-float v5, v8, v9

    sub-float v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 951
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 952
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_da

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->left:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_da

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->hold:F

    cmpg-float v0, v0, v10

    if-gtz v0, :cond_da

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    cmpg-float v0, v0, v10

    if-gtz v0, :cond_da

    .line 953
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const v1, -0x19000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 954
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    const/high16 v0, 0x43b40000    # 360.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->left:F

    mul-float v3, v0, v2

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v12

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 956
    :cond_da
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->hold:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_116

    .line 957
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 958
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 959
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const v1, -0xbc5fb9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 960
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x40600000    # 3.5f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 961
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    const/high16 v0, 0x43b40000    # 360.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->hold:F

    mul-float v3, v0, v2

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v12

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 963
    :cond_116
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_28

    .line 964
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const v1, -0xbc5fb9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 965
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x40600000    # 3.5f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 966
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 967
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 968
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->line:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_28

    :cond_151
    move v0, v6

    .line 937
    goto/16 :goto_34

    .line 938
    :cond_154
    const v1, -0xd4d4d5

    goto/16 :goto_39
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 979
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 973
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 976
    return-void
.end method
