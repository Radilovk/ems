.class final Lcom/isaigu/gymapp/ai/FocusBoard$Turn;
.super Landroid/graphics/drawable/Drawable;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Turn"
.end annotation


# instance fields
.field private final p:Landroid/graphics/Paint;

.field private final toUpright:Z


# direct methods
.method constructor <init>(IZ)V
    .registers 5

    .prologue
    .line 1005
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1002
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    .line 1006
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->toUpright:Z

    .line 1007
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1008
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1009
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1010
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1011
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    const v13, 0x3dcccccd    # 0.1f

    const v12, 0x3da3d70a    # 0.08f

    const v11, 0x3d8f5c29    # 0.07f

    const v10, 0x3d23d70a    # 0.04f

    const/4 v3, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1016
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v6, v0

    .line 1017
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v7, v0

    .line 1018
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    const v1, 0x3db851ec    # 0.09f

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1020
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->toUpright:Z

    if-eqz v0, :cond_b3

    const v0, 0x3ed70a3d    # 0.42f

    mul-float/2addr v0, v6

    .line 1021
    :goto_2c
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->toUpright:Z

    if-eqz v1, :cond_b9

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v7

    .line 1022
    :goto_34
    iget v2, v4, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v5, v6, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    add-float/2addr v5, v2

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->toUpright:Z

    if-eqz v2, :cond_bf

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v6

    :goto_45
    add-float/2addr v2, v5

    .line 1023
    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v8, v7, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v5, v8

    iget-boolean v8, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->toUpright:Z

    if-eqz v8, :cond_c1

    :goto_53
    add-float/2addr v3, v5

    .line 1024
    new-instance v5, Landroid/graphics/RectF;

    add-float/2addr v0, v2

    add-float/2addr v1, v3

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    mul-float v0, v6, v12

    mul-float v1, v6, v12

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1026
    new-instance v1, Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v2, v6, v10

    add-float/2addr v0, v2

    iget v2, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float v3, v7, v10

    add-float/2addr v2, v3

    iget v3, v4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1027
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1028
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    .line 1029
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 1030
    mul-float v0, v6, v13

    sub-float v3, v8, v0

    mul-float v0, v7, v11

    sub-float v4, v2, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1031
    mul-float v0, v6, v13

    sub-float v3, v8, v0

    mul-float v0, v7, v11

    add-float v4, v2, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1032
    return-void

    .line 1020
    :cond_b3
    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v0, v6

    goto/16 :goto_2c

    .line 1021
    :cond_b9
    const v1, 0x3ed70a3d    # 0.42f

    mul-float/2addr v1, v7

    goto/16 :goto_34

    :cond_bf
    move v2, v3

    .line 1022
    goto :goto_45

    .line 1023
    :cond_c1
    const v3, 0x3df5c28f    # 0.12f

    mul-float/2addr v3, v7

    goto :goto_53
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1046
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1037
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1042
    return-void
.end method
