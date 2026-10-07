.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;
.super Landroid/graphics/drawable/Drawable;
.source "DoubleImpulse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Glow"
.end annotation


# instance fields
.field final box:Landroid/graphics/RectF;

.field final d:F

.field level:F

.field final p:Landroid/graphics/Paint;

.field final round:Z


# direct methods
.method constructor <init>(FZ)V
    .registers 5

    .prologue
    .line 1017
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1013
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    .line 1014
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    .line 1018
    iput p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    .line 1019
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->round:Z

    .line 1020
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 1023
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->level:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_8

    .line 1048
    :goto_7
    return-void

    .line 1026
    :cond_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1027
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->round:Z

    if-eqz v0, :cond_ee

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 1028
    :goto_20
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1029
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    const/16 v3, -0x3ef9

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1030
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->level:F

    const/high16 v4, 0x41b00000    # 22.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1031
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1032
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1033
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1034
    const/high16 v2, 0x40200000    # 2.5f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    mul-float/2addr v2, v3

    .line 1035
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1036
    sub-float v2, v0, v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1037
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_ae

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_ae

    .line 1038
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    iget v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1039
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->level:F

    const/high16 v5, 0x42080000    # 34.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1040
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1042
    :cond_ae
    const/high16 v2, 0x3f400000    # 0.75f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    mul-float/2addr v2, v3

    .line 1043
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1044
    sub-float/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1045
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc00000    # 1.5f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1046
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->level:F

    const/high16 v3, 0x43160000    # 150.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1047
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 1027
    :cond_ee
    const/high16 v0, 0x40c00000    # 6.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    mul-float/2addr v0, v2

    goto/16 :goto_20
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1057
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 1051
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 1054
    return-void
.end method
