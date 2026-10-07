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
    .line 872
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 868
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    .line 869
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    .line 873
    iput p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    .line 874
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->round:Z

    .line 875
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const/16 v11, -0x3ef9

    const/high16 v10, 0x40400000    # 3.0f

    const/4 v9, 0x0

    .line 878
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->level:F

    cmpg-float v0, v0, v9

    if-gtz v0, :cond_c

    .line 901
    :goto_b
    return-void

    .line 881
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 882
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->round:Z

    if-eqz v0, :cond_8e

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 883
    :goto_24
    const/4 v1, 0x0

    move v2, v1

    :goto_26
    const/4 v1, 0x3

    if-ge v2, v1, :cond_5a

    .line 884
    const/high16 v1, 0x3fc00000    # 1.5f

    int-to-float v4, v2

    mul-float/2addr v4, v10

    add-float/2addr v1, v4

    iget v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    mul-float/2addr v4, v1

    .line 885
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget v7, v3, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v4

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 886
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v9

    if-lez v1, :cond_5a

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v9

    if-gtz v1, :cond_94

    .line 896
    :cond_5a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 897
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 898
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->level:F

    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 899
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 900
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 882
    :cond_8e
    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    mul-float/2addr v0, v1

    goto :goto_24

    .line 889
    :cond_94
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 890
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->d:F

    mul-float/2addr v5, v10

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 891
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 892
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    iget v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->level:F

    if-nez v2, :cond_cb

    const/16 v1, 0xeb

    :goto_b0
    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 893
    sub-float v1, v0, v4

    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 894
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->box:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 883
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_26

    .line 892
    :cond_cb
    const/4 v1, 0x1

    if-ne v2, v1, :cond_d1

    const/16 v1, 0x78

    goto :goto_b0

    :cond_d1
    const/16 v1, 0x37

    goto :goto_b0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 910
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 904
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 907
    return-void
.end method
